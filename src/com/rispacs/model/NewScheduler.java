package com.rispacs.model;

import application.DatabaseHandler;

import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class NewScheduler {

    // Overview of the NewScheduler
    //      The scheduler operates by sorting appointments (objects containing information relevant to the procedure)
    // into lists based on their attributes. When an appointment is booked it checks the list for that modality. If that
    // modalityList is empty it schedules the appointment for the nearest rounded time of the current time. If that list
    // is not empty it then sets the time to 30 minutes after the latest appointment. The scheduler then checks for the
    // two types of conflicts that can occur: One, the patient needs to be in two places at the same time, or two a
    // member of the staff is required to perform two tasks at the same time. Each conflict is assigned a new educated
    // guessed time slot from the list relevant to its limiting factor and checked. If the conflict is still not
    // resolved, a recursive function iterates through time until the appointment passes all checks. Finally, after the
    // exceptions have been handled the appointment or if some thing went wrong in a prior attempt, appointments, are
    // are added to the procedurelist in the database.

    private ArrayList scheduledAppointments = new ArrayList();
    private ArrayList unScheduledAppointments = new ArrayList();
    private ArrayList thisPatientList = new ArrayList(); // all appointments associated with the currently conflicted Patient
    private ArrayList xRayList = new ArrayList(); //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    private ArrayList ctScanList = new ArrayList(); // These lists are full of their respective scheduled appointments
    private ArrayList mriList = new ArrayList(); // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    private ArrayList technitionList = new ArrayList();

    //Method called through context in the Physician controller by the onclickLisener in the PhysicianView for bookAppointment.
    public void bookAppointment() {
        // The schedule is started with a best guess without checking fields and then it checks the fields to see of it was correct
        // If it was incorrect it guesses again with knowledge of expected values and checks again etc.
        clearAllLists();
        populateUnScheduledAppointmentList();
        sortModalityLists();
        setScheduledAppointmentTimes();
        handleScheduleExceptions();
        addAppointmentsToDatabase();
        System.out.println("End");
    }

    //method to contain all exception handling
    private void handleScheduleExceptions() {
        for (int i = 0; i < unScheduledAppointments.size(); i++) {
            Appointment appointment = (Appointment) unScheduledAppointments.get(i);
            if (checkForTimeConflict(appointment)) {
                ArrayList arrayList = getModalityList(appointment);
                setTimeToLastAvailable(arrayList, appointment);
                resolveTimeConflict(appointment);
            }
            if (checkForStaffConflict(appointment)) {
                setTimeToLastAvailable(technitionList, appointment);
                resolveStaffConflict(appointment);
            }
        }
    }

    //Goes to the list containing the limiting factor and finds the minimum transformation to resolve the conflict.
    private void setTimeToLastAvailable(ArrayList arrayList, Appointment appointment) {
        if (arrayList.size() > 0) {
            Appointment tempAppointment = (Appointment) arrayList.get(arrayList.size() - 1);
            Timestamp tempTimestamp = tempAppointment.getScheduledDate();
            LocalDateTime tempLocalDateTime = tempTimestamp.toLocalDateTime();
            tempTimestamp = Timestamp.valueOf(tempLocalDateTime.plusMinutes(30));
            appointment.setScheduledDate(tempTimestamp);
        }

    }

    //if the guess and educated guess failed it then iterates through time until it reaches a state with no conflicts.
    private void resolveStaffConflict(Appointment appointment) {
        while (checkForStaffConflict(appointment)) {
            incrementTimeBy30(appointment);
        }
    }

    // Looks for staff conflicts. A staff conflict is when there is no labor to operate the business.
    private boolean checkForStaffConflict(Appointment appointment1) {
        technitionList.clear();
        int staffId1 = appointment1.getStaffId();
        Timestamp timestamp1 = appointment1.getScheduledDate();
        for (int i = 0; i < scheduledAppointments.size(); i++) {
            Appointment appointment2 = (Appointment) scheduledAppointments.get(i);
            int staffId2 = appointment2.getStaffId();
            if (staffId1 == staffId2) {
                technitionList.add(appointment2);
            }
        }
        for (int i = 0; i < technitionList.size(); i++) {
            Appointment appointment2 = (Appointment) technitionList.get(i);
            Timestamp timestamp2 = appointment2.getScheduledDate();
            if (timestamp1.compareTo(timestamp2) == 0) {
                return true;
            }
        }
        return false;
    }

    //if the guess from the last index of that modality was wrong it increments by 30 minutes until the conflict is resolved.
    private void resolveTimeConflict(Appointment appointment) {
        while (checkForTimeConflict(appointment)) {
            incrementTimeBy30(appointment);
        }
    }

    private void incrementTimeBy30(Appointment appointment) {
        Timestamp  timestamp = appointment.getScheduledDate();
        LocalDateTime localDateTime = timestamp.toLocalDateTime();
        timestamp = Timestamp.valueOf(localDateTime.plusMinutes(30));
        appointment.setScheduledDate(timestamp);
    }

    //sets the initial guessed time values for appointments
    private void setScheduledAppointmentTimes() {
        for (int i = 0; i < unScheduledAppointments.size(); i++) {
            Appointment thisAppointment = (Appointment) unScheduledAppointments.get(i);
            thisAppointment.setScheduledDate(getSuggestedTime(getModalityList(thisAppointment)));
        }
    }

    //gets the list pertaining to that appointments modality for the 2nd educated guess.
    private ArrayList getModalityList(Appointment appointment) {
        int modalityType = appointment.getModalityTypeId();
        if (modalityType == 1) {
            return xRayList;
        }
        if (modalityType == 2) {
            return ctScanList;
        }
        return mriList;
    }

    // suggests a time with no information about conflicts other than those directly competing for a modality.
    private Timestamp getSuggestedTime(ArrayList arrayList) {
        if (arrayList.size() <= 0) {
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            return roundTime(currentTime);
        } else {
            int index = arrayList.size() - 1;
            Appointment appointment = (Appointment) arrayList.get(index);
            LocalDateTime localDateTime = appointment.getScheduledDate().toLocalDateTime();
            Timestamp sugestedTime = Timestamp.valueOf(localDateTime.plusMinutes(30));
            return sugestedTime;
        }
    }

    // Sorts appointments into their respective modality list and then sorts all the lists by time.
    private void sortModalityLists(){
        for (int i = 0; i < scheduledAppointments.size(); i++) {
            Appointment currentAppointment = (Appointment) scheduledAppointments.get(i);
            int modalityTypeId = currentAppointment.getModalityTypeId();
            if (modalityTypeId == 1) {
                xRayList.add(currentAppointment);
            }
            if (modalityTypeId == 2) {
                ctScanList.add(currentAppointment);
            }
            if (modalityTypeId == 3) {
                mriList.add(currentAppointment);
            } else if (modalityTypeId < 1 || modalityTypeId > 3){
                System.out.println("Appoint with procedureID " + currentAppointment.getProcedureId() + "is not linked" +
                        "to a modality.");
            }
        }
        Collections.sort(xRayList, timeSort);
        Collections.sort(ctScanList, timeSort);
        Collections.sort(mriList, timeSort);
        Collections.sort(scheduledAppointments, timeSort);
        Collections.sort(unScheduledAppointments, timeSort);
    }

    // house keeping between calls to the same context
    private void clearAllLists() {
        scheduledAppointments.clear();
        unScheduledAppointments.clear();
        thisPatientList.clear();
        xRayList.clear();
        ctScanList.clear();
        mriList.clear();
    }

    //Checks to see if the same patient is scheduled to be at more than one appointment at the same time.
    private boolean checkForTimeConflict(Appointment appointment1) {
        thisPatientList.clear();
        Timestamp timestamp1 = appointment1.getScheduledDate();
        int patient1Id = appointment1.getPatientId();
        for (int i = 0; i < scheduledAppointments.size(); i++) {
           Appointment appointment = (Appointment) scheduledAppointments.get(i);
           int patientId = appointment.getPatientId();
           if (patient1Id == patientId){
               thisPatientList.add(appointment);
           }
        }
        for (int i = 0; i < thisPatientList.size(); i++) {
            Appointment appointment2 = (Appointment) scheduledAppointments.get(i);
            Timestamp timestamp2 = appointment2.getScheduledDate();
            int patient2Id = appointment2.getPatientId();
            if (patient1Id == patient2Id && timestamp1.compareTo(timestamp2) == 0) {
                return true;
            }
        }
        return false;
    }

    //rounds timestamps to get our nice 30 minutes intervals
    private Timestamp roundTime(Timestamp timestamp) {

        LocalDateTime localDateTime = timestamp.toLocalDateTime();
        int minutes = localDateTime.getMinute();
        int seconds = localDateTime.getSecond();
        int nanos = localDateTime.getNano();
        localDateTime = localDateTime.minusMinutes(minutes);
        localDateTime = localDateTime.minusSeconds(seconds);
        localDateTime = localDateTime.minusNanos(nanos);

        if (minutes >= 30) {
            localDateTime = localDateTime.plusHours(1);
        }
        timestamp = Timestamp.valueOf(localDateTime);
        return timestamp;
    }

    // queries the database for all unprocessed appointments.
    private void populateUnScheduledAppointmentList() {

        Connection connection = null;

        String query = "SELECT procedurelist.staffID_technician, modalityproceduretype.modalityType_modalityTypeId, procedurelist.patient_patientID,\n" +
                "procedurelist.procedureId, procedurelist.procedureDateOfRequest, procedurestatus.procedureStatusID,\n" +
                "procedurelist.procedureScheduledDate\n" +
                "FROM procedurelist, procedurestatus, modalityproceduretype\n" +
                "WHERE procedurelist.modalityProcedureTypeId = modalityproceduretype.modalityProcedureTypeId AND\n" +
                "procedurestatus.procedureStatusID = procedurelist.procedurestatus_procedureStatusID AND\n" +
                "procedurelist.modalityProcedureTypeId = modalityproceduretype.modalityProcedureTypeId;";

        try
        {
            connection = DatabaseHandler.getConnection();
            ResultSet resultSet = connection.createStatement().executeQuery(query);
            while (resultSet.next())
            {
                String modalityType_modalityTypeId = resultSet.getString("modalityproceduretype.modalityType_modalityTypeId");
                String patient_patientID = resultSet.getString("procedurelist.patient_patientID");
                String procedureId = resultSet.getString("procedurelist.procedureId");
                String procedureDateOfRequest = resultSet.getString("procedurelist.procedureDateOfRequest");
                String procedureStatusID = resultSet.getString("procedurestatus.procedureStatusID");
                String staffId = resultSet.getString("staffID_technician");
                String procedureScheduledDate = resultSet.getString("procedurelist.procedureScheduledDate");



                if (procedureScheduledDate != null &&!procedureScheduledDate.isEmpty()){
                    NewScheduler.Appointment appointment = new NewScheduler.Appointment(
                            Integer.valueOf(modalityType_modalityTypeId),
                            Integer.valueOf(patient_patientID),
                            Integer.valueOf(procedureId),
                            Integer.valueOf(procedureStatusID),
                            Timestamp.valueOf(procedureDateOfRequest),
                            Timestamp.valueOf(procedureScheduledDate),
                            Integer.valueOf(staffId));
                    scheduledAppointments.add(appointment);
                } else {
                    NewScheduler.Appointment appointment = new NewScheduler.Appointment(
                            Integer.valueOf(modalityType_modalityTypeId),
                            Integer.valueOf(patient_patientID),
                            Integer.valueOf(procedureId),
                            Integer.valueOf(procedureStatusID),
                            Timestamp.valueOf(procedureDateOfRequest),
                            Integer.valueOf(staffId));
                    unScheduledAppointments.add(appointment);
                }


            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                connection.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
    }

    //Once the final schedule passes all checks it is added to the DB.
    private void addAppointmentsToDatabase() {
        Connection connection = null;
        try {
            connection = DatabaseHandler.getConnection();
            for (int i = 0; i < unScheduledAppointments.size(); i++) {
                Appointment appointment = (Appointment) unScheduledAppointments.get(i);
                String id = String.valueOf(appointment.getProcedureId());
                Timestamp timestamp = appointment.getScheduledDate();
                String time = timestamp.toString();

                String update = "UPDATE procedurelist\n" +
                        "SET procedurelist.procedureScheduledDate = " + "'" + time + "', procedurelist.procedurestatus_procedureStatusID = 1" +
                        " WHERE procedurelist.procedureId = " + id + ";";

                int rslt = connection.createStatement().executeUpdate(update);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Comparator from Daniel to be able to use Collections frame work.
    //I know this is not what we talked about and your idea was better, but it would take more thought and planning.
    // This was quick and easy to crank out all be it more typing.
    Comparator<Appointment> timeSort = new Comparator<Appointment>() {
        @Override
        public int compare(Appointment o1, Appointment o2) {
            return o1.getScheduledDate().compareTo(o2.getScheduledDate());
        }
    };

    //The object to store all the permanent data needed to formulate the schedule.
    private class Appointment {

        //Need modalityTypeId from modalitytype table.
        // Need patientId, procedureId, procedureDateOfRequest, modalityProcedureType from procedurelist table

        private int procedureId, modalityTypeId, patientId, procedureStatus, staffId;
        private Timestamp dateOfRequest,scheduledDate;

        Appointment(int modalityTypeId, int patientId, int procedureId, int procedureStatus, Timestamp dateOfRequest, Timestamp scheduledDate, int staffId) {

            this.staffId = staffId;
            this.modalityTypeId = modalityTypeId;
            this.patientId = patientId;
            this.procedureId = procedureId;
            this.dateOfRequest = dateOfRequest;
            this.procedureStatus = procedureStatus;
            this.scheduledDate = scheduledDate;
        }

        Appointment(int modalityTypeId, int patientId, int procedureId, int procedureStatus, Timestamp dateOfRequest, int staffId) {

            this.staffId = staffId;
            this.modalityTypeId = modalityTypeId;
            this.patientId = patientId;
            this.procedureId = procedureId;
            this.dateOfRequest = dateOfRequest;
            this.procedureStatus = procedureStatus;
        }

        public int getStaffId() {
            return staffId;
        }

        public void setStaffId(int staffId) {
            this.staffId = staffId;
        }

        public int getProcedureId() {
            return procedureId;
        }

        public void setProcedureId(int procedureId) {
            this.procedureId = procedureId;
        }

        public int getModalityTypeId() {
            return modalityTypeId;
        }

        public void setModalityTypeId(int modalityTypeId) {
            this.modalityTypeId = modalityTypeId;
        }

        public int getPatientId() {
            return patientId;
        }

        public void setPatientId(int patientId) {
            this.patientId = patientId;
        }

        public Timestamp getDateOfRequest() {
            return dateOfRequest;
        }

        public void setDateOfRequest(Timestamp dateOfRequest) {
            this.dateOfRequest = dateOfRequest;
        }

        public Timestamp getScheduledDate() {
            return scheduledDate;
        }

        public void setScheduledDate(Timestamp scheduledDate) {
            this.scheduledDate = scheduledDate;
        }

        public int getProcedureStatus() {
            return procedureStatus;
        }

        public void setProcedureStatus(int procedureStatus) {
            this.procedureStatus = procedureStatus;
        }
    }
}
