package com.rispacs.controller;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;

import com.mysql.jdbc.StringUtils;
import com.rispacs.model.ArrivedPatientsModel;
import com.rispacs.model.Context;
import com.rispacs.model.ModalityImage;
import com.rispacs.model.PatientModel;
import com.rispacs.model.ProcedureListModel;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.text.Text;
import javafx.util.StringConverter;

public class InvoiceController {

	//////Patient text info
	@FXML private Text PatientID;
	@FXML private Text PatientAge;
	@FXML private Text PatientGender;
	@FXML private Text PatientName;
	/////PatientTable and its 2 columns
	@FXML private TableView<PatientModel> PatientTable;
	@FXML private TableColumn<PatientModel, String> InvoiceNumberCol;
	@FXML private TableColumn<PatientModel, String> PatientNameCol;
	/////Invoice info table
	@FXML private TableColumn<ProcedureListModel, String> DateCol;
	@FXML private TableColumn<ProcedureListModel, String> ItemCol;
	@FXML private TableColumn<ProcedureListModel, String> DescriptionCol;
	@FXML private TableColumn<ProcedureListModel, String> ItemCountCol;
	@FXML private TableColumn<ProcedureListModel, String> CostPerCol;
	@FXML private TableColumn<ProcedureListModel, String> DiscountCol;
	@FXML private TableColumn<ProcedureListModel, String> BalanceCol;
	@FXML private TableColumn<ProcedureListModel, String> PaidCol;
	/////Pay button
	@FXML private Button PayButton;
	/////Observables
	private ObservableList<PatientModel> arrivedPatientArray;

	/////Invoice Controller
	public void initialize()
	{
		System.out.println("Loading Patient Data");
		/////Populate patient list table, invoice table still empty
		Populate_Patient_Table();

		///// Hitting the pay button
		PayButton.setOnMouseReleased(event -> {
    		if(PayButton.getText() != "Paid")
    		{
    			///check current patient paid status from database
    			//set values acordingly
    			PayButton.setText("Paid");
    			PayButton.setDisable(true);
    			/// if pay is successfully pressed, update PatientPaid value for that patient
    		}
    	});
		PatientTable.setOnMouseClicked(event -> {
    		if(PatientTable.getSelectionModel().getSelectedItem() != null)
    		{
    			String patientID = PatientTable.getSelectionModel().getSelectedItem().getPatientID().toString();
    			Populate_Invoice_Table(patientID);
    			Populate_Patient_Info_Table(patientID);
    			//Table_ProcedureImages.setItems(null);
    			//ImageView_patientProcedureImage.setImage(null);
    			//TextArea_report.setText(null);
    			setPatientInfo();
    		}
    	});
		// display info based on that patient
		//clicking paid changes patient info, updates database so that it knows they paid
		//after patient info is loaded from click, delete the constructed patient to avoid bloat
	}
	private void Populate_Patient_Info_Table(String patientID2) {
		// TODO Auto-generated method stub

	}
	@FXML
    void Populate_Patient_Table()//ActionEvent event)
    {
    	System.out.println("Populating Patient Table");
    	Connection connection = null;
        try
    	{
        	arrivedPatientArray = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllPatientsQuery = "SELECT * FROM patient";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllPatientsQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String patientName = resultSet.getString("patientFirstName");
				String patientID = resultSet.getString("patientID");
				String patientMidName = resultSet.getString("patientMiddleName");
				String patientLastName = resultSet.getString("patientLastName");
				String patientGender = resultSet.getString("patientGender");
				String patientSSN = "";//resultSet.getString("patientSSN");
				String patinetHeight = resultSet.getString("patinetHeight");
				String patientWeight = resultSet.getString("patientWeight");
				String patientDOB = resultSet.getString("patientDOB");

				//arrivedPatientArray.add(new ArrivedPatientsModel (patientID, patientName));
				arrivedPatientArray.add(new PatientModel (patientID, patientName, patientMidName, patientLastName, patientGender, patientSSN, patinetHeight, patientWeight, patientDOB));
    		}

    		InvoiceNumberCol.setCellValueFactory(new PropertyValueFactory<>("patientID"));
    		PatientNameCol.setCellValueFactory(new PropertyValueFactory<>("patientFirstName")); /// change to full name later

    		PatientTable.setItems(null);
    		PatientTable.setItems(arrivedPatientArray);

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
				e.printStackTrace();
			}
    	}
    }

	private void Populate_Invoice_Table(String patientID)
	{

	}
	 public void setPatientInfo()
	    {
	    	PatientModel patient = PatientTable.getSelectionModel().getSelectedItem();
	    	PatientID.setText(patient.getPatientID());
	        PatientName.setText(patient.getPatientLastName() + ", " + patient.getPatientFirstName() + " " + patient.getPatientMiddleName().charAt(0)+ ".");
	        PatientGender.setText(patient.getPatientGender());
	    }

}


