package com.rispacs.model;

import application.DatabaseHandler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class NewScheduler {

    private ArrayList scheduledAppointments = new ArrayList();
    private ArrayList unScheduledAppointments = new ArrayList();
    private ArrayList thisPatientList = new ArrayList();
    private ArrayList xRayList = new ArrayList();
    private ArrayList ctScanList = new ArrayList();
    private ArrayList mriList = new ArrayList();

    public void bookAppointment() {
        clearAllLists();
        populateUnScheduledAppointmentList();
        sortModalityLists();
        setScheduledAppointmentTimes();
        handleScheduleExceptions();
        addAppointmentsToDatabase();
        System.out.println("End");
    }

    private void handleScheduleExceptions() {
        for (int i = 0; i < unScheduledAppointments.size(); i++) {
            Appointment appointment = (Appointment) unScheduledAppointments.get(i);
            if (checkForTimeConflict(appointment)) {
                ArrayList arrayList = getModalityList(appointment);
                if (arrayList.size() > 0) {
                    Appointment tempAppointment = (Appointment) arrayList.get(arrayList.size() - 1);
                    Timestamp tempTimestamp = tempAppointment.getScheduledDate();
                    LocalDateTime tempLocalDateTime = tempTimestamp.toLocalDateTime();
                    tempTimestamp = Timestamp.valueOf(tempLocalDateTime.plusMinutes(30));
                    appointment.setScheduledDate(tempTimestamp);
                }
                resolveTimeConflict(appointment);
            }
        }
    }

    private void resolveTimeConflict(Appointment appointment) {
        while (checkForTimeConflict(appointment)) {
            Timestamp  timestamp = appointment.getScheduledDate();
            LocalDateTime localDateTime = timestamp.toLocalDateTime();
            timestamp = Timestamp.valueOf(localDateTime.plusMinutes(30));
            appointment.setScheduledDate(timestamp);
        }
    }

    private void setScheduledAppointmentTimes() {
        for (int i = 0; i < unScheduledAppointments.size(); i++) {
            Appointment thisAppointment = (Appointment) unScheduledAppointments.get(i);
            thisAppointment.setScheduledDate(getSuggestedTime(getModalityList(thisAppointment)));
        }
    }

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

    private void clearAllLists() {
        scheduledAppointments.clear();
        unScheduledAppointments.clear();
        thisPatientList.clear();
        xRayList.clear();
        ctScanList.clear();
        mriList.clear();
    }

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
                            Timestamp.valueOf(procedureDateOfRequest));
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

    Comparator<Appointment> timeSort = new Comparator<Appointment>() {
        @Override
        public int compare(Appointment o1, Appointment o2) {
            return o1.getScheduledDate().compareTo(o2.getScheduledDate());
        }
    };

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

        Appointment(int modalityTypeId, int patientId, int procedureId, int procedureStatus, Timestamp dateOfRequest) {


            this.modalityTypeId = modalityTypeId;
            this.patientId = patientId;
            this.procedureId = procedureId;
            this.dateOfRequest = dateOfRequest;
            this.procedureStatus = procedureStatus;
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
