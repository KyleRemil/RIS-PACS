package com.rispacs.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rispacs.model.ArrivedPatientsModel;
import com.rispacs.model.ProcedureSchedule;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class TechnicianController {

    @FXML private Button Button_refreshProcedureScheduleTable;
    @FXML private TableView<ProcedureSchedule> Table_procedureScheduleTable;
    @FXML private TableColumn<ProcedureSchedule, String> column_PatientName;
    @FXML private TableColumn<ProcedureSchedule, String> column_Modality;
    @FXML private TableColumn<ProcedureSchedule, String> column_procedureType;
    @FXML private Button Button_beginProcedure;

    private ObservableList<ProcedureSchedule> procedureScheduleList;

    @FXML
    void refreshProcedureScheduleTable(ActionEvent event)
    {
    	System.out.println("refresh_Table_avaliablePatients() Called");
    	Connection connection = null;
        try
    	{
        	procedureScheduleList = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllScheduledProceduresQuery = "SELECT procedurelist.procedureId, procedurelist.patient_patientID, patient.patientFirstName, modalityproceduretype.modalityProcedureTypeDesc, modalitytype.modalityTypeName "
    				+ "FROM procedurelist, patient, modalityproceduretype, modalitytype WHERE patient.patientID = procedurelist.patient_patientID AND modalityproceduretype.modalityProcedureTypeId = procedurelist.modalityProcedureTypeId AND modalitytype.modalityTypeId = modalityproceduretype.modalityType_modalityTypeId AND procedureStatusID = 0;";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllScheduledProceduresQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String procedureID = resultSet.getString("procedurelist.procedureId");
    			String patientName = resultSet.getString("patient.patientFirstName");
				String patientID = resultSet.getString("procedurelist.patient_patientID");
				String modalityName = resultSet.getString("modalitytype.modalityTypeName");
				String procedureType = resultSet.getString("modalityproceduretype.modalityProcedureTypeDesc");
				procedureScheduleList.add(new ProcedureSchedule (procedureID, patientID, patientName, modalityName,procedureType ));
    		}

    		column_PatientName.setCellValueFactory(new PropertyValueFactory<>("patientName"));
    		column_Modality.setCellValueFactory(new PropertyValueFactory<>("modalityName"));
    		column_procedureType.setCellValueFactory(new PropertyValueFactory<>("procedureType"));

    		Table_procedureScheduleTable.setItems(null);
    		Table_procedureScheduleTable.setItems(procedureScheduleList);


    	}
        catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    	finally
    	{
    		try
    		{
				connection.close();
			}
    		catch (SQLException e)
    		{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }

    @FXML
    void beginProcedure(ActionEvent event)
    {
    	openProcedureView();
    	String procedureID = Table_procedureScheduleTable.getSelectionModel().getSelectedItem().getprocedureID().toString();
    	System.out.println("beginProcedure() Called");
    	Connection connection = null;
        try
    	{
        	procedureScheduleList = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String updateProcedureStatusQuery = "UPDATE procedurelist SET procedureStatusID=2 WHERE procedureID=" + procedureID ;

    		PreparedStatement preparedStatement = connection.prepareStatement(updateProcedureStatusQuery);
    		preparedStatement.execute();

    		refreshProcedureScheduleTable(null);
    	}
        catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    	finally
    	{
    		try
    		{
				connection.close();
			}
    		catch (SQLException e)
    		{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }
    public void openProcedureView() {
        try {
        	AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("/com/rispacs/view/ProcedureStageView.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Procedure");
            stage.setScene(new Scene(root));
            stage.show();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}
