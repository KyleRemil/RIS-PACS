package com.rispacs.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jfoenix.controls.JFXTextArea;
import com.rispacs.model.ArrivedPatientsModel;
import com.rispacs.model.ProcedureSchedule;
import com.rispacs.model.Context;
import com.rispacs.model.PatientModel;

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
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class TechnicianController {

    @FXML private Button Button_refreshProcedureScheduleTable;
    @FXML private TableView<ProcedureSchedule> Table_procedureScheduleTable;
    @FXML private TableColumn<ProcedureSchedule, String> column_PatientName;
    @FXML private TableColumn<ProcedureSchedule, String> column_Modality;
    @FXML private TableColumn<ProcedureSchedule, String> column_procedureType;
    @FXML private TableColumn<ProcedureSchedule, String> column_procedureTime;
    @FXML private TableColumn<ProcedureSchedule, String> column_procedureStatus;

    @FXML private Text patientID;
    @FXML private Text patientDOB;
    @FXML private Text patientName;
    @FXML private Text patientHeight;
    @FXML private Text patientGender;
    @FXML private Text patientWeight;

    @FXML private Button Button_beginProcedure;
    @FXML private JFXTextArea procedureInfo_textArea;

    private ObservableList<ProcedureSchedule> procedureScheduleList;

    @FXML
    public void initialize() {
    	refreshProcedureScheduleTable(null);
    	Table_procedureScheduleTable.setOnMouseClicked(event -> {
    		if(Table_procedureScheduleTable.getSelectionModel().getSelectedItem() != null)
    			setPatientInfo();
		});
    }
    @FXML
    void refreshProcedureScheduleTable(ActionEvent event)
    {
    	System.out.println("refresh_Table_avaliablePatients() Called");
    	Connection connection = null;
        try
    	{
        	procedureScheduleList = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllScheduledProceduresQuery = "SELECT procedurelist.procedureId, "
    												+ "procedurelist.patient_patientID, "
    												+ "patient.patientFirstName, "
    												+ "patient.patientMiddleName, "
    												+ "patient.patientLastName, "
    												+ "modalityproceduretype.modalityProcedureTypeDesc, "
    												+ "modalitytype.modalityTypeName, "
    												+ "procedurelist.procedureScheduledDate, "
    												+ "procedurestatus.procedureStatusDesc, "
    												+ "procedurelist.physicianNotes, "
    												+ "patient.*"
    												+ "FROM procedurelist, patient, modalityproceduretype, modalitytype, procedurestatus "
    												+ "WHERE procedurestatus.procedureStatusID = procedurelist.procedurestatus_procedureStatusID AND patient.patientID = procedurelist.patient_patientID AND modalityproceduretype.modalityProcedureTypeId = procedurelist.modalityProcedureTypeId AND modalitytype.modalityTypeId = modalityproceduretype.modalityType_modalityTypeId AND (procedureStatusID <= 1 OR procedureStatusID = 2)";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllScheduledProceduresQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String procedureID = resultSet.getString("procedurelist.procedureId");
    			String patientFisrtName = resultSet.getString("patient.patientFirstName");
				String patientID = resultSet.getString("procedurelist.patient_patientID");
				String modalityName = resultSet.getString("modalitytype.modalityTypeName");
				String procedureType = resultSet.getString("modalityproceduretype.modalityProcedureTypeDesc");
				String procedureStatus = resultSet.getString("procedurestatus.procedureStatusDesc");
				String procedureDate = resultSet.getString("procedurelist.procedureScheduledDate");
				String physicianNotes = resultSet.getString("procedurelist.physicianNotes");

				PatientModel patientModel = new PatientModel (
						resultSet.getString("patientID"),
						resultSet.getString("patientFirstName"),
						resultSet.getString("patientMiddleName"),
						resultSet.getString("patientLastName"),
						resultSet.getString("patientGender"),
						"",
						resultSet.getString("patinetHeight"),
						resultSet.getString("patientWeight"),
						resultSet.getString("patientDOB"));

				procedureScheduleList.add(new ProcedureSchedule (procedureID, patientID, patientFisrtName, modalityName,procedureType,procedureStatus,procedureDate, physicianNotes, patientModel));
    		}

    		column_PatientName.setCellValueFactory(new PropertyValueFactory<>("patientName"));
    		column_Modality.setCellValueFactory(new PropertyValueFactory<>("modalityName"));
    		column_procedureType.setCellValueFactory(new PropertyValueFactory<>("procedureType"));
    		column_procedureTime.setCellValueFactory(new PropertyValueFactory<>("procedureTime"));
    		column_procedureStatus.setCellValueFactory(new PropertyValueFactory<>("procedureStatus"));

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

    public void setPatientInfo()
    {
    	PatientModel patient = Table_procedureScheduleTable.getSelectionModel().getSelectedItem().getPatietModel();
    	patientID.setText(patient.getPatientID());
        patientDOB.setText(patient.getPatientDOB());
        patientName.setText(patient.getPatientLastName() + ", " + patient.getPatientFirstName() + " " + patient.getPatientMiddleName().charAt(0)+ ".");
        patientHeight.setText(patient.getPatinetHeight());
        patientGender.setText(patient.getPatientGender());
        patientWeight.setText(patient.getPatientWeight());
        
        procedureInfo_textArea.setText(Table_procedureScheduleTable.getSelectionModel().getSelectedItem().getPhysicianNotes());
    }


    @FXML
    void beginProcedure(ActionEvent event)
    {
    	String procedureID = Table_procedureScheduleTable.getSelectionModel().getSelectedItem().getprocedureID().toString();
    	Context.getInstance().setCurrentProcedureID(procedureID);
    	System.out.println("beginProcedure() Called");
    	Connection connection = null;
        try
    	{
        	if (procedureID == null)
        	{
        		System.out.println("Please Select a procedure from the table to begin.");
        	}
        	else
        	{
        		procedureScheduleList = FXCollections.observableArrayList();
        		connection = DatabaseHandler.getConnection();
        		String updateProcedureStatusQuery = "UPDATE procedurelist SET procedurestatus_procedureStatusID = 2 WHERE procedureID=" + procedureID ;

        		PreparedStatement preparedStatement = connection.prepareStatement(updateProcedureStatusQuery);
        		preparedStatement.execute();

        		//refreshProcedureScheduleTable(null);
        		Button_beginProcedure.setDisable(true);
        		openProcedureView();
        		Button_beginProcedure.setDisable(false);
        		refreshProcedureScheduleTable(null);
        	}
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
        	AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("/com/rispacs/view/ProcedureView.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Procedure");
            stage.setScene(new Scene(root));
            stage.showAndWait();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}
