package com.rispacs.model;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.cell.PropertyValueFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

public class Scheduler {

    private ArrayList appointmentList = new ArrayList();
    SchedulerTree schedulerTree = new SchedulerTree();

    public void populateAppointmentList() {

        Connection connection = null;

        String query = "SELECT modalityproceduretype.modalityType_modalityTypeId, procedurelist.patient_patientID, " +
                "procedurelist.procedureId, procedurelist.procedureDateOfRequest, procedurestatus.procedureStatusID\n" +
                "FROM procedurelist, procedurestatus, modalityproceduretype\n" +
                "WHERE procedurelist.modalityProcedureTypeId = modalityproceduretype.modalityProcedureTypeId AND " +
                "procedurestatus.procedureStatusID = procedurelist.procedurestatus_procedureStatusID;";
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

                Appointment appointment = new Appointment(
                        Integer.valueOf(modalityType_modalityTypeId),
                        Integer.valueOf(patient_patientID),
                        Integer.valueOf(procedureId),
                        Integer.valueOf(procedureStatusID),
                        Timestamp.valueOf(procedureDateOfRequest));
                appointmentList.add(appointment);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("ERROR @ Control.removeUser.First Try");
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

    ///////// Scraps / Notes /////////////////////////////////////////////////////////////////////////////////////////

//    void populateTable_patientRadiologyHistory(String patientID)
//    {
//        System.out.println("populateTable_patientRadiologyHistory("+ patientID +") Called");
//        Connection connection = null;
//        String getPatientProcedureHistory = "SELECT modalitytype.modalityTypeName,modalityproceduretype.modalityProcedureTypeDesc, staff.staffName, procedurelist.procedureDateOfRequest, procedurelist.procedureScheduledDate, procedurestatus.procedureStatusDesc, procedurelist.procedureId FROM procedurelist ProcedureList, patient Patient, staff Staff, modalitytype ModalityType, modalityproceduretype ModalityProcedureType, procedurestatus ProcedureStatus WHERE ModalityType.modalityTypeId = ModalityProcedureType.modalityType_modalityTypeId AND ModalityProcedureType.modalityProcedureTypeId = ProcedureList.modalityProcedureTypeId AND ProcedureStatus.procedureStatusID = ProcedureList.procedurestatus_procedureStatusID AND Staff.staffID = ProcedureList.staffID_technician AND ProcedureList.patient_patientID = Patient.patientID AND Patient.patientID =" + patientID;
//        ModalityProcedureListObservableList = FXCollections.observableArrayList();
//        try
//        {
//            connection = DatabaseHandler.getConnection();
//            System.out.println(getPatientProcedureHistory);
//            ResultSet resultSet = connection.createStatement().executeQuery(getPatientProcedureHistory);
//            while (resultSet.next())
//            {
//                String modalityName = resultSet.getString("modalitytype.modalityTypeName");
//                String procedureTypeDesc = resultSet.getString("modalityproceduretype.modalityProcedureTypeDesc");
//                String modalityTechnician = resultSet.getString("staff.staffName");
//                String dateOfRequest = resultSet.getString("procedurelist.procedureDateOfRequest");
//                String scheduledDate = resultSet.getString("procedurelist.procedureScheduledDate");
//                String procedureStatus = resultSet.getString("procedurestatus.procedureStatusDesc");
//                String procedureId = resultSet.getString("procedurelist.procedureId");
//                ProcedureListModel procedureListModel = new ProcedureListModel(
//                        modalityName,
//                        procedureTypeDesc,
//                        modalityTechnician,
//                        dateOfRequest,
//                        scheduledDate,
//                        procedureStatus,
//                        procedureId);
//                ModalityProcedureListObservableList.add(procedureListModel);
//            }
//            Table_patientRadiologyHistory.setItems(ModalityProcedureListObservableList);
//
//            column_ProcedureId.setCellValueFactory(new PropertyValueFactory<>("procedureId"));
//            column_ModalityName.setCellValueFactory(new PropertyValueFactory<>("modalityName"));
//            column_ProcedureType.setCellValueFactory(new PropertyValueFactory<>("procedureTypeDesc"));
//            column_ModalityTechnician.setCellValueFactory(new PropertyValueFactory<>("modalityTechnician"));
//            column_ProcedureDOR.setCellValueFactory(new PropertyValueFactory<>("dateOfRequest"));
//            column_ProcedureScheduledDate.setCellValueFactory(new PropertyValueFactory<>("scheduledDate"));
//            column_ProcedureStatus.setCellValueFactory(new PropertyValueFactory<>("procedureStatus"));
//
//            Table_patientRadiologyHistory.setItems(ModalityProcedureListObservableList);
//        }
//        catch(SQLException e)
//        {
//            e.printStackTrace();
//            System.out.println("ERROR @ Control.removeUser.First Try");
//        }
//        finally
//        {
//            try
//            {
//                connection.close();
//            }
//            catch (SQLException e)
//            {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//        }
//    }

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
}
