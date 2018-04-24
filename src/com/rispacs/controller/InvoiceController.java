package com.rispacs.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import com.rispacs.model.*;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.text.Text;

import javax.xml.crypto.Data;

public class InvoiceController {

	//////Patient text info
	@FXML private Text PatientID;
	@FXML private Text PatientAge;
	@FXML private Text PatientGender;
	@FXML private Text PatientName;
	/////PatientTable and its 2 columns
	@FXML private TableView<PatientModel> PatientTable;
	@FXML private TableView<PatientInvoice> PatientInvoiceTable;
	@FXML private TableColumn<PatientModel, String> InvoiceNumberCol;
	@FXML private TableColumn<PatientModel, String> PatientNameCol;
	/////Invoice info table
	@FXML private TableColumn<ProcedureListModel, String> DateCol;
	@FXML private TableColumn<ProcedureListModel, String> ItemCol;
	@FXML private TableColumn<ProcedureListModel, String> DecriptionCol;
	@FXML private TableColumn<ProcedureListModel, String> ItemCountCol;
	@FXML private TableColumn<ProcedureListModel, String> CostPerCol;
	@FXML private TableColumn<ProcedureListModel, String> DiscountCol;
	@FXML private TableColumn<ProcedureListModel, String> BalanceCol;
	@FXML private TableColumn<ProcedureListModel, String> PaidCol;

    @FXML private Button Button_refreshUnpaidProcedureTable;
    @FXML private Button payBtn;
	/////Pay button
	/////Observables
	private ObservableList<PatientModel> arrivedPatientArray;
	private ObservableList<PatientInvoice> patientInvoiceObservableList;

	private ArrayList invoiceList = new ArrayList();

	/////Invoice Controller
	public void initialize()
	{
//		populateInvoiceTable();
		System.out.println("Loading Patient Data");
		/////Populate patient list table, invoice table still empty
		Populate_Patient_Table();

		///// Hitting the pay button


		PatientTable.setOnMouseClicked(event -> {
    		if(PatientTable.getSelectionModel().getSelectedItem() != null)
    		{
    			String patientID = PatientTable.getSelectionModel().getSelectedItem().getPatientID().toString();
    			invoiceList.clear();

    			if (patientInvoiceObservableList != null)
    			{
					patientInvoiceObservableList.clear();
				}
    			if (!patientID.equals(null))
    			{
    				getInvoiceFromDB(Integer.valueOf(patientID));
    			}

    			populateInvoiceTable();
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


	private void getInvoiceFromDB(int id)
	{
		Connection connection = null;
		String getInvoice = "SELECT procedurelist.procedureId, procedurelist.patientPaid, procedurelist.procedureScheduledDate, procedurelist.patient_patientID, modalityproceduretype.modalityProcedureTypeId "
				+ " FROM procedurelist, patient, modalityproceduretype "
				+ " WHERE patient.patientID = procedurelist.patient_patientID "
				+ " AND procedurelist.procedurestatus_procedureStatusID >= 4 "
				+ " AND procedurelist.procedurestatus_procedureStatusID <= 5 "
				+ " AND procedurelist.modalityProcedureTypeId = modalityproceduretype.modalityProcedureTypeId "
				+ " AND procedurelist.patientPaid = 0 "
				+ " AND procedurelist.patient_patientID =" + id;
		try
		{
			connection = DatabaseHandler.getConnection();
			ResultSet resultSet = connection.createStatement().executeQuery(getInvoice);

			while (resultSet.next())
			{
				String procedureId = resultSet.getString("procedureId");
				String procedureScheduledDate = resultSet.getString("procedureScheduledDate");
				String patient_patientID = resultSet.getString("patient_patientID");
				String modalityProcedureType = resultSet.getString("modalityProcedureTypeId");
				String paid = resultSet.getString("patientPaid");
				PatientInvoice patientInvoice = new PatientInvoice(Timestamp.valueOf(procedureScheduledDate),
						Integer.valueOf(procedureId), Integer.valueOf(patient_patientID), Integer.valueOf(modalityProcedureType)
						,Double.valueOf(paid));
				invoiceList.add(patientInvoice);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				connection.close();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	private double getCost(int procedure) {
		if (procedure == 1) {
			return 98.00;
		}
		if (procedure == 2) {
			return 92.00;
		}
		if (procedure == 3) {
			return 105.00;
		}
		if (procedure == 4) {
			return 89.00;
		}
		if (procedure == 5) {
			return 78;
		}
		if (procedure == 6) {
			return 233.00;
		}
		if (procedure == 7) {
			return 400.00;
		}
		if (procedure == 8) {
			return 170.00;
		} else {
			return 0.00;
		}
	}

	private String getDescription(int input) {
		if (input == 1) {
			return "Left Arm X-Ray";
		}
		if (input == 2) {
			return "Right Arm X-Ray";
		}
		if (input == 3) {
			return "Left Leg X-Ray";
		}
		if (input == 4) {
			return "Right Leg X-Ray";
		}
		if (input == 5) {
			return "Torso X-Ray";
		}
		if (input == 6) {
			return "Groin X-Ray";
		}
		if (input == 7) {
			return "Brain CT-Scan";
		}
		if (input == 8) {
			return "Chest Cavity MRI";
		} else {
			return "Empty";
		}
	}

	private void populateInvoiceTable() {
		patientInvoiceObservableList = FXCollections.observableArrayList();
		for (int i = 0; i < invoiceList.size(); i++) {
			PatientInvoice patientInvoice = (PatientInvoice) invoiceList.get(i);
			patientInvoice.setDescription(getDescription(patientInvoice.getModalityType()));
			patientInvoice.setItem(patientInvoice.getModalityType());
			patientInvoice.setNumberOfIitems(1);
			patientInvoice.setCost(getCost(patientInvoice.getModalityType()));
			patientInvoice.setDiscount(0.00);
			if (patientInvoice.getBalance() > 0) {
				patientInvoice.setBalance(patientInvoice.getCost());
			} else {
				patientInvoice.getBalance();
			}
			if (patientInvoice.getPaid() > 0) {
				patientInvoice.setCost(0.00);
			}
			if (patientInvoice.getPaid() ==0) {
				patientInvoice.setBalance(patientInvoice.getCost());
			}

			patientInvoiceObservableList.add(patientInvoice);
		}
		PatientInvoiceTable.setItems(patientInvoiceObservableList);

		DateCol.setCellValueFactory(new PropertyValueFactory<>("dateOfService"));
		ItemCol.setCellValueFactory(new PropertyValueFactory<>("item"));
		ItemCountCol.setCellValueFactory(new PropertyValueFactory<>("numberOfIitems"));
		CostPerCol.setCellValueFactory(new PropertyValueFactory<>("cost"));
		DiscountCol.setCellValueFactory(new PropertyValueFactory<>("discount"));
		PaidCol.setCellValueFactory(new PropertyValueFactory<>("paid"));
		BalanceCol.setCellValueFactory(new PropertyValueFactory<>("balance"));
		DecriptionCol.setCellValueFactory(new PropertyValueFactory<>("description"));

		PatientInvoiceTable.setItems(patientInvoiceObservableList);
	}

	 public void setPatientInfo()
	    {
	    	PatientModel patient = PatientTable.getSelectionModel().getSelectedItem();
	    	PatientID.setText(patient.getPatientID());
	        PatientName.setText(patient.getPatientLastName() + ", " + patient.getPatientFirstName() + " " + patient.getPatientMiddleName().charAt(0)+ ".");
	        PatientGender.setText(patient.getPatientGender());
	    }
	@FXML
	private void pay() {
		int patientId = Integer.valueOf(PatientTable.getSelectionModel().getSelectedItem().getPatientID());
		double paid = PatientInvoiceTable.getSelectionModel().getSelectedItem().getCost();

		Connection connection = null;
		String updateProcedurelist = "UPDATE procedurelist SET patientPaid= 1 WHERE procedureId = ?";

		try
		{
			String patientProcedureID = Integer.toString(PatientInvoiceTable.getSelectionModel().getSelectedItem().getProcedureId());

			connection = DatabaseHandler.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(updateProcedurelist);
			preparedStatement.setString(1,patientProcedureID);
			preparedStatement.execute();
			System.out.println("pay");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				Populate_Patient_Table();
				populateInvoiceTable();
				connection.close();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		getInvoiceFromDB(patientId);
		populateInvoiceTable();
	}

    @FXML
    void refreshUnpaidProcedureTable(ActionEvent event)
    {
    	Populate_Patient_Table();
    }


}


