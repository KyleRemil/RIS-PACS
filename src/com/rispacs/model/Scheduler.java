package com.rispacs.model;

import application.DatabaseHandler;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;

public class Scheduler {

    private ArrayList appointmentList = new ArrayList();
    private ArrayList xRayList = new ArrayList();
    private ArrayList ctScanList = new ArrayList();
    private ArrayList mRIList = new ArrayList();
    public SchedulerTree schedulerTree = new SchedulerTree();
    public SchedulerTree schedulerTreeById = new SchedulerTree();
    SchedulerQueue schedulerQueue;
    private Timestamp latestScheduledDate;

    public void generateSchedule() {
        populateLists();
        bookAppointment();
    }

    private void populateLists() {

        Connection connection = null;

        String query = "SELECT modalityproceduretype.modalityType_modalityTypeId, procedurelist.patient_patientID, " +
                "procedurelist.procedureId, procedurelist.procedureDateOfRequest, procedurestatus.procedureStatusID, \n" +
                "procedurelist.procedureScheduledDate " +
                "FROM procedurelist, procedurestatus, modalityproceduretype\n" +
                "WHERE procedurelist.modalityProcedureTypeId = modalityproceduretype.modalityProcedureTypeId AND " +
                "procedurestatus.procedureStatusID = procedurelist.procedurestatus_procedureStatusID AND " +
                "procedurelist.procedurestatus_procedureStatusID = 0;";

        String query1 = "SELECT MAX(procedurelist.procedureScheduledDate)\n" +
                "FROM procedurelist\n" +
                "WHERE procedurelist.procedurestatus_procedureStatusID = 1;";
        try
        {
            connection = DatabaseHandler.getConnection();
            ResultSet resultSet = connection.createStatement().executeQuery(query);
            ResultSet resultSet1 = connection.createStatement().executeQuery(query1);
            while (resultSet.next())
            {
                String modalityType_modalityTypeId = resultSet.getString("modalityproceduretype.modalityType_modalityTypeId");
                String patient_patientID = resultSet.getString("procedurelist.patient_patientID");
                String procedureId = resultSet.getString("procedurelist.procedureId");
                String procedureDateOfRequest = resultSet.getString("procedurelist.procedureDateOfRequest");
                String procedureStatusID = resultSet.getString("procedurestatus.procedureStatusID");
                String procedureScheduledDate = resultSet.getString("procedurelist.procedureScheduledDate");



                if (procedureScheduledDate != null &&!procedureScheduledDate.isEmpty()){
                    Appointment appointment = new Appointment(
                            Integer.valueOf(modalityType_modalityTypeId),
                            Integer.valueOf(patient_patientID),
                            Integer.valueOf(procedureId),
                            Integer.valueOf(procedureStatusID),
                            Timestamp.valueOf(procedureDateOfRequest),
                            Timestamp.valueOf(procedureScheduledDate));
                    appointmentList.add(appointment);
                } else {
                    Appointment appointment = new Appointment(
                            Integer.valueOf(modalityType_modalityTypeId),
                            Integer.valueOf(patient_patientID),
                            Integer.valueOf(procedureId),
                            Integer.valueOf(procedureStatusID),
                            Timestamp.valueOf(procedureDateOfRequest));
                    appointmentList.add(appointment);
                }


            }
            while (resultSet1.next()) {
                String stringScheduledDate = resultSet1.getString("MAX(procedurelist.procedureScheduledDate)");
                if (stringScheduledDate != null && !stringScheduledDate.isEmpty()){
                    latestScheduledDate = Timestamp.valueOf(stringScheduledDate);
                } else {
                    latestScheduledDate = new Timestamp(System.currentTimeMillis());
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

    public void bookAppointment() {
        Timestamp localTimeStamp = new Timestamp(System.currentTimeMillis());
        if (localTimeStamp.getNanos() >= latestScheduledDate.getNanos()) {
            LocalDateTime localDateTime = localTimeStamp.toLocalDateTime();

            for (int i = 0; i < appointmentList.size(); i++) {
                Appointment thisAppointment = (Appointment) appointmentList.get(i);
                Timestamp returnTime;
                long minutes = localDateTime.getMinute();
                long seconds = localDateTime.getSecond();
                long nanos = localDateTime.getNano();
                if (minutes < 30) {
                    localDateTime = localDateTime.minusMinutes(minutes);
                    localDateTime = localDateTime.minusSeconds(seconds);
                    localDateTime = localDateTime.minusNanos(nanos);
                    localDateTime = localDateTime.plusMinutes(30);
                } else if (minutes >= 30) {
                    localDateTime = localDateTime.minusMinutes(minutes);
                    localDateTime = localDateTime.minusSeconds(seconds);
                    localDateTime = localDateTime.minusNanos(nanos);
                    localDateTime = localDateTime.plusHours(1);
                }
                returnTime = Timestamp.valueOf(localDateTime);
                thisAppointment.setScheduledDate(returnTime);
            }
            addAppointmentsToDatabase();
        } else {
            LocalDateTime latestDateTime = latestScheduledDate.toLocalDateTime();
            for (int i = 0; i < appointmentList.size(); i++) {
                Appointment thisAppointment = (Appointment) appointmentList.get(i);
                Timestamp returnTime;
                long minutes = latestDateTime.getMinute();
                long seconds = latestDateTime.getSecond();
                long nanos = latestDateTime.getNano();
                if (minutes < 30) {
                    latestDateTime = latestDateTime.minusMinutes(minutes);
                    latestDateTime = latestDateTime.minusSeconds(seconds);
                    latestDateTime = latestDateTime.minusNanos(nanos);
                    latestDateTime = latestDateTime.plusMinutes(30);
                } else if (minutes >= 30) {
                    latestDateTime = latestDateTime.minusMinutes(minutes);
                    latestDateTime = latestDateTime.minusSeconds(seconds);
                    latestDateTime = latestDateTime.minusNanos(nanos);
                    latestDateTime = latestDateTime.plusHours(1);
                }
                returnTime = Timestamp.valueOf(latestDateTime);
                thisAppointment.setScheduledDate(returnTime);
            }
            addAppointmentsToDatabase();
        }

    }

    public void addAppointmentsToDatabase() {
        Connection connection = null;
        try {
            connection = DatabaseHandler.getConnection();
            for (int i =0; i < appointmentList.size(); i++) {
                Appointment appointment = (Appointment) appointmentList.get(i);
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

    public class Appointment {

        //Need modalityTypeId from modalitytype table.
        // Need patientId, procedureId, procedureDateOfRequest, modalityProcedureType from procedurelist table

        private int procedureId, modalityTypeId, patientId, procedureStatus;
        private Timestamp dateOfRequest,scheduledDate;

        Appointment(int modalityTypeId, int patientId, int procedureId, int procedureStatus, Timestamp dateOfRequest, Timestamp scheduledDate) {

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

    // Testing Purposes only ///////////////////////////////////////////////////////////////////////////////////////

    // Old throw away code below. I havent deleted it yet because I want to be sure I dont need it. /////////////////
    //-----------------------------------------------------------------------------------------------------------------

    private void buildSchedulerTreeByTime() {

        //shuffling list to randomize the data so the tree is more balanced.
//        Collections.shuffle(appointmentList);

        for (int i = 0; i < appointmentList.size(); i++) {
            Appointment thisAppointment = (Appointment) appointmentList.get(i);
            long longDate = thisAppointment.getDateOfRequest().getTime();
            schedulerTree.addNode(longDate, thisAppointment);
        }
    }

    private void buildSchedulerQueue() {

        int size = appointmentList.size();
        schedulerQueue = new SchedulerQueue(size);

        for (int i = 0; i < size; i++) {
            schedulerQueue.insert((Appointment) appointmentList.get(i));
        }

    }

    public void buildScheduleTreeById() {

        Collections.shuffle(appointmentList);

        for (int i = 0; i < appointmentList.size(); i++) {
            Appointment thisAppointment = (Appointment) appointmentList.get(i);
            int id = thisAppointment.getProcedureId();
            schedulerTreeById.addNode(id, thisAppointment);
        }
    }



    //Idea #1. Thinking of used the time the booked the appointment to determine the appointment time
//    public void bookAppointment() {
//        for (int i = 0; i < appointmentList.size(); i++) {
//            Appointment thisAppointment = (Appointment) appointmentList.get(i);
//            Timestamp thisTime = thisAppointment.dateOfRequest;
//            LocalDateTime localDateTime = thisTime.toLocalDateTime();
//            Timestamp returnTime;
//            LocalDateTime returnDate = thisTime.toLocalDateTime();
//            long minutes = localDateTime.getMinute();
//            if (minutes < 30) {
//                returnDate = localDateTime.minusMinutes(minutes);
//                returnDate = returnDate.plusMinutes(30);
//            } else if (minutes >= 30) {
//                returnDate = localDateTime.minusMinutes(minutes);
//                returnDate = returnDate.plusHours(1);
//            }
//            returnTime = Timestamp.valueOf(returnDate);
//            thisAppointment.setScheduledDate(returnTime);
//        }
//        addAppointmentsToDatabase();

    // Idea #2. Just use the order in which they were received to determine their priority. Then just get the current
    // time (if the scheduled date is null) then find the next available even time slot and book it.





    ///////// Scraps / Notes /////////////////////////////////////////////////////////////////////////////////////////
    //-----------------------------------------------------------------------------------------------------------------
//    @FXML
//    private void bookAppointment() {
//
////		System.out.println(Table_patientRadiologyHistory.getSelectionModel().getSelectedItem().getProcedureId());
////		int procedureId = Integer.valueOf(Table_patientRadiologyHistory.getSelectionModel().getSelectedItem().getProcedureId());
//
//        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//        System.out.println("TimeStamp: " + timestamp);
//
//        int year = timestamp.getYear() + 1900;
//        int month = timestamp.getMonth() + 1;
//        int day = timestamp.getDay() + 1;
//        int hours = timestamp.getHours();
//        int minutes = timestamp.getMinutes();
//        int seconds = timestamp.getSeconds();
//        int nano = 0;
//
//        long time = timestamp.getTime();
//        System.out.println(time);
//
////		System.out.println(
////				"year: " + year
////						+ " month: " + month
////						+ " day: " + day
////						+ " hours: " + hours
////						+ " minutes: " + minutes
////						+ " seconds: " + seconds
////						+ " nano: " + nano
////		);
//        newSchedulerTree.getNextProcedure(newSchedulerTree.root);
//
//
////		String timeStamp = new java.sql.Date();
//
////		System.out.println("Time: " + timeStamp);
//
////		ProcedureSchedule procedureSchedule = comboB;
////		ModalityTechnician modalityTechnician = comboBox_modalityTechnician.getSelectionModel().getSelectedItem();
////		ModalityProcedureType modalityProcedureType = comboBox_modalityProcedureType.getSelectionModel().getSelectedItem();
////    	try {
////    		Connection connection = DatabaseHandler.getConnection();
////    		String query = ""
////
////		} catch (Exception e) {
////    		e.printStackTrace();
////		}
//    }
//
//    private void buildQueue(){
//
//        procedureList.clear();
//
//
//        for (int i = 0; i < ModalityProcedureListObservableList.size(); i++) {
//
//            ProcedureListModel thisProcedureListModel = ModalityProcedureListObservableList.get(i);
//            int id = Integer.valueOf(thisProcedureListModel.getProcedureId());
//            Timestamp timestamp = Timestamp.valueOf(thisProcedureListModel.getdateOfRequest());
//            long key = timestamp.getTime();
//            newSchedulerTree.addNode(key, id);
//
//        }
//
//
//    }
//
//    private void makeKey(ProcedureListModel procedureListModel) {
//
//        Timestamp timestamp = Timestamp.valueOf(procedureListModel.getdateOfRequest());
//        int total = 0;
//
//        //converting every thing to seconds to sort who is first
//        int year = timestamp.getYear() + 1900;
//        int month = timestamp.getMonth() + 1;
//        int day = timestamp.getDay() + 1; // 24*60^2
//        int hours = timestamp.getHours(); //60^2
//        int minutes = timestamp.getMinutes(); //60
//        int seconds = timestamp.getSeconds();
//        int nano = 0;
//
//        long time = timestamp.getTime();
//        System.out.println("Time: " + time);
//
////		System.out.println(
////				"year: " + year
////				+ " month: " + month
////				+ " day: " + day
////				+ " hours: " + hours
////				+ " minutes: " + minutes
////				+ " seconds: " + seconds
////				+ " nano: " + nano
////		);
//        // divide seconds by highest power of 60 that is applicable
//
//    }
    public class SchedulerTree {

        public Node root;

        public void addNode(long key, Appointment appointment) {

            Node newNode = new Node(key, appointment);

            if (root == null) {

                root = newNode;
            } else {

                Node focusNode = root;
                Node parent;

                while (true) {

                    parent = focusNode;

                    if (key < focusNode.key) {

                        focusNode = focusNode.leftChild;

                        if (focusNode == null) {

                            parent.leftChild = newNode;
                            return;
                        }
                    } else {

                        focusNode = focusNode.rightChild;

                        if (focusNode == null) {

                            parent.rightChild = newNode;
                            return;
                        }
                    }
                }
            }
        }

        public void addNodeId(int id, Appointment appointment) {

            Node newNode = new Node(id, appointment);

            if (root == null) {

                root = newNode;
            } else {

                Node focusNode = root;
                Node parent;

                while (true) {

                    parent = focusNode;

                    if (id < focusNode.key) {

                        focusNode = focusNode.leftChild;

                        if (focusNode == null) {

                            parent.leftChild = newNode;
                            return;
                        }
                    } else {

                        focusNode = focusNode.rightChild;

                        if (focusNode == null) {

                            parent.rightChild = newNode;
                            return;
                        }
                    }
                }
            }
        }

        public void getNextProcedure(Node focusNode, ArrayList arrayList) {

            if (focusNode != null) {

                getNextProcedure(focusNode.leftChild, arrayList);

                System.out.println("key: " + focusNode.key);
                arrayList.add(focusNode);

                getNextProcedure(focusNode.rightChild, arrayList);

//            System.out.println("key: " + focusNode.key);
            } else {
                System.out.println("focus node null!");
            }
        }

        public Node findNode(long key) {

            Node focusNode = root;

            while (focusNode.key != key) {

                if (key < focusNode.key) {

                    focusNode = focusNode.leftChild;

                } else {

                    focusNode = focusNode.rightChild;
                }
                if (focusNode == null) {
                    return null;
                }
            }
            return focusNode;
        }

        public boolean remove(long key) {

            Node focusNode = root;
            Node parent = root;

            boolean isItAleftChild = true;

            while (focusNode.key != key) {

                parent = focusNode;

                if (key < focusNode.key) {

                    isItAleftChild = true;
                    focusNode = focusNode.leftChild;
                } else {

                    isItAleftChild = false;
                    focusNode = focusNode.rightChild;
                }
                if (focusNode == null) {
                    return false;
                }
            }
            if (focusNode.leftChild == null && focusNode.rightChild == null) {

                if (focusNode == root) {

                    root = null;
                } else if (isItAleftChild) {

                    parent.leftChild = null;
                } else {

                    parent.rightChild = null;
                }
            }
            else if (focusNode.rightChild == null) {

                if (focusNode == root) {

                    root = focusNode.leftChild;
                } else if (isItAleftChild) {

                    parent.leftChild = focusNode.leftChild;
                }
                else parent.rightChild = focusNode.leftChild;
            }
            else if (focusNode.leftChild == null) {
                if (focusNode == root) {
                    root = focusNode.rightChild;
                } else if (isItAleftChild) {
                    parent.leftChild = focusNode.rightChild;
                } else {
                    parent.rightChild = focusNode.leftChild;
                }
            } else {
                Node replacement = getReplacementNode(focusNode);

                if (focusNode == root) {
                    root = replacement;
                }
                else if (isItAleftChild) {
                    parent.leftChild = replacement;
                } else {
                    parent.rightChild = replacement;

                    replacement.leftChild = focusNode.leftChild;
                }
            }
            return true;
        }

        public Node getReplacementNode(Node replacedNode) {

            Node replacementParent = replacedNode;
            Node replacement = replacedNode;

            Node focusNode = replacedNode.rightChild;

            while (focusNode != null) {
                replacementParent = replacement;
                replacedNode = focusNode;
                focusNode = focusNode.leftChild;
            }
            if (replacement != replacedNode.rightChild) {
                replacementParent.leftChild = replacement.rightChild;
                replacement.rightChild = replacedNode.rightChild;
            }
            return replacement;
        }

        private class Node {

            long key;
            Appointment appointment;
            int id;

            Node leftChild;
            Node rightChild;

            private Node(long key, Appointment appointment) {

                this.key = key;
                this.appointment = appointment;
            }

            private Node(int id, Appointment appointment) {
                this.id = id;
                this.appointment = appointment;
            }
        }


    }



    public class SchedulerQueue {

        private Appointment[] appointmentArray;
        private int queueSize, front, rear, numbOfItems = 0;

        SchedulerQueue(int queueSize) {

            this.queueSize = queueSize;
            this.appointmentArray = new Appointment[queueSize];
        }

        public void insert(Appointment appointment) {

            if (numbOfItems + 1 <= queueSize) {

                appointmentArray[rear] = appointment;
                rear++;
                numbOfItems++;
            } else {
                System.out.println("queue full!");
            }
        }

        public void remove(){

            //not really removing because I dont want to waste time resorting, just changing the head.

            if (numbOfItems > 0) {

                front++;
            }
        }

        public Appointment peek() {

            return appointmentArray[front];
        }

    }
}
