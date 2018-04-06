package com.rispacs.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import com.jfoenix.controls.JFXDatePicker;
import com.rispacs.model.ArrivedPatientsModel;
import com.rispacs.model.PatientModel;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Tab;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.text.Text;

public class RegistrationController {

    @FXML private Tab registrationTab;
    @FXML private Button registration_Button_RegisterNewPatient;
    @FXML private Text registration_Title_basicInformation;
    @FXML private Text registration_Title_PatientName;
    @FXML private Text registration_Title_PatientDOB;
    @FXML private Text registration_Title_PatientGender;
    @FXML private Text registration_Title_PatientSSN;
    @FXML private Text registration_Title_PatientMaritalStatus;
    @FXML private Text registration_Title_PatientHeight;
    @FXML private Text registration_Title_PatientWeight;
    @FXML private Text registration_Title_ContactInformation;
    @FXML private Text registration_Title_ContactInformation2;
    @FXML private ComboBox<?> registration_ComboBox_PatientMaritalStatus;
    @FXML private ComboBox<?> registration_ComboBox_PatientGender;

    @FXML private TextField registration_TextField_PatientMiddleName;
    @FXML private TextField registration_TextField_PatientSSN;
    @FXML private TextField registration_TextField_PatientWeight;
    @FXML private TextField registration_TextField_PatientHeight;
    @FXML private TextField registration_TextField_PatientFirstName;
    @FXML private TextField registration_TextField_PatientLastName;
    @FXML private JFXDatePicker registration_TextField_PatientDOB;

    @FXML private TextField TextField_patientSearchFirstName;
    @FXML private Button registration_Button_UpdatePatient;
    @FXML private TextField TextField_patientSearchLastName;
    @FXML private Button Button_SearchPatient;


    @FXML private TableView<PatientModel> Table_searchPatient;
    @FXML private TableColumn<PatientModel, String> Column_patientID;
    @FXML private TableColumn<PatientModel, String> Column_patientName;
    @FXML private TableColumn<PatientModel, String> Column_patientLastVisit;

    private ObservableList<PatientModel> SearchPatientList;

    private String selectedPatientID = null;
    public void initialize()
    {
    	registration_Button_UpdatePatient.setDisable(true);

    	Table_searchPatient.setOnMouseClicked(event -> {
    		if(Table_searchPatient.getSelectionModel().getSelectedItem() != null)
    		{
	    		selectedPatientID = Table_searchPatient.getSelectionModel().getSelectedItem().getPatientID();
				PopulatePatientInformation(Table_searchPatient.getSelectionModel().getSelectedItem());
				registration_Button_UpdatePatient.setDisable(false);
    		}
		});
    }
    private void PopulatePatientInformation(PatientModel patientModel)
    {
    	registration_TextField_PatientMiddleName.setText(patientModel.getPatientID());
        registration_TextField_PatientSSN.setText(patientModel.getPatientSSN());
        registration_TextField_PatientWeight.setText(patientModel.getPatientWeight());
        registration_TextField_PatientHeight.setText(patientModel.getPatinetHeight());
        registration_TextField_PatientFirstName.setText(patientModel.getPatientFirstName());
        registration_TextField_PatientLastName.setText(patientModel.getPatientLastName());

        String dateValue = patientModel.getPatientDOB();

        Date date = null;
		try
		{
			date = new SimpleDateFormat("yyy-mm-dd").parse(dateValue);
		}
		catch (ParseException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

        registration_TextField_PatientDOB.setValue(localDate);
        registration_Button_RegisterNewPatient.setDisable(true);
	}
	@FXML
    void RequestRegisterNewPatient(ActionEvent event){
    	System.out.println("RequestRegisterNewPatient() Called");
    	if (validateRequiredFields() == true)	//If no required fields are empty
    	{
    		insertNewPatient();
    	}
    	else
    	{
    		System.out.println("Required Fields Cannot Be Empty");
    	}
    }
    private void insertNewPatient()
    {
    	System.out.println("insertNewPatient() Called");
    	Connection connection = null;
    	String patientFirstName = registration_TextField_PatientFirstName.getText().toString();
    	String patientMiddleName = registration_TextField_PatientMiddleName.getText().toString();
    	String patientLastName = registration_TextField_PatientLastName.getText().toString();
    	String patientSSN = registration_TextField_PatientSSN.getText().toString();
    	String patientHeight = registration_TextField_PatientHeight.getText().toString();
    	String patientWeight = registration_TextField_PatientWeight.getText().toString();
        try
    	{
    		connection = DatabaseHandler.getConnection();
    		String insertNewPatient = "INSERT INTO patient ("
    							+ "patientFirstName,"
    							+ "patientMiddleName,"
    							+ "patientLastName,"
    							+ "patientGender,"
    							+ "patientSSN,"
    							+ "patinetHeight, "
    							+ "patientWeight, "
    							+ "patientDOB) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)";

    		PreparedStatement preparedStatement = connection.prepareStatement(insertNewPatient);
    		preparedStatement.setString (1, patientFirstName);
    		preparedStatement.setString (2, patientMiddleName);
    		preparedStatement.setString (3, patientLastName);
    		preparedStatement.setString (4, "x");
    		preparedStatement.setInt (5, Integer.parseInt(patientSSN));
    		preparedStatement.setInt (6, Integer.parseInt(patientHeight));
    		preparedStatement.setInt (7, Integer.parseInt(patientWeight));
    		preparedStatement.setDate (8, java.sql.Date.valueOf(registration_TextField_PatientDOB.getValue()));

    		preparedStatement.execute();

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
    private boolean validateRequiredFields(){
    	System.out.println("validateRequiredFields() Called");
    	boolean isValidated = true;

    	if(registration_TextField_PatientFirstName.getText().trim().isEmpty())
    	{
    		System.out.println("First Name cannot be empty");
    		isValidated = false;
    	}
    	else if (registration_TextField_PatientLastName.getText().trim().isEmpty())
    	{
    		System.out.println("Last Name cannot be empty");
    		isValidated = false;
    	}
    	else
    	{
    		isValidated = true;
    	}
		return isValidated;
    }

    @FXML
    void updatePatient(ActionEvent event)
    {
    	registration_Button_UpdatePatient.setDisable(true);
    	System.out.println("insertNewPatient() Called");
    	Connection connection = null;
    	String patientFirstName = registration_TextField_PatientFirstName.getText().toString();
    	String patientMiddleName = registration_TextField_PatientMiddleName.getText().toString();
    	String patientLastName = registration_TextField_PatientLastName.getText().toString();
    	String patientSSN = registration_TextField_PatientSSN.getText().toString();
    	String patientHeight = registration_TextField_PatientHeight.getText().toString();
    	String patientWeight = registration_TextField_PatientWeight.getText().toString();
        try
    	{
    		connection = DatabaseHandler.getConnection();
    		String updatePatientQuery = "UPDATE patient SET patientFirstName=?, "
    				+ "patientMiddleName=?, "
    				+ "patientLastName=?, "
    				+ "patientGender=?, "
    				+ "patientSSN=?, "
    				+ "patinetHeight=?, "
    				+ "patientWeight=?, "
    				+ "patientDOB=? "
    				+ "WHERE patientID=?";
    		PreparedStatement preparedStatement = connection.prepareStatement(updatePatientQuery);
    		preparedStatement.setString (1, patientFirstName);
    		preparedStatement.setString (2, patientMiddleName);
    		preparedStatement.setString (3, patientLastName);
    		preparedStatement.setString (4, "x");
    		preparedStatement.setInt (5, Integer.parseInt(patientSSN));
    		preparedStatement.setInt (6, Integer.parseInt(patientHeight));
    		preparedStatement.setInt (7, Integer.parseInt(patientWeight));
    		preparedStatement.setDate (8, java.sql.Date.valueOf(registration_TextField_PatientDOB.getValue()));
    		preparedStatement.setString(9,selectedPatientID);

    		preparedStatement.execute();

    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    	finally
    	{
    		try
    		{
        		selectedPatientID = null;
        		registration_Button_RegisterNewPatient.setDisable(false);
        		//registration_Button_UpdatePatient.setDisable(true);
        		clearPatientInformation();
				connection.close();
			}
    		catch (SQLException e)
    		{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }

    private void clearPatientInformation()
    {
    	registration_TextField_PatientMiddleName.setText(null);
        registration_TextField_PatientSSN.setText(null);
        registration_TextField_PatientWeight.setText(null);
        registration_TextField_PatientHeight.setText(null);
        registration_TextField_PatientFirstName.setText(null);
        registration_TextField_PatientLastName.setText(null);
        registration_TextField_PatientDOB.setValue(null);
        //registration_Button_RegisterNewPatient.setText(null);
	}

    @FXML
    void SearchPatient(ActionEvent event)
    {

    	System.out.println("SearchPatient() Called");
    	//registration_Button_UpdatePatient.setDisable(false);
    	Connection connection = null;
        try
    	{
    		connection = DatabaseHandler.getConnection();

    		SearchPatientList = FXCollections.observableArrayList();

    		String searchPatientFirstName = TextField_patientSearchFirstName.getText().toString();
        	String searchPatientLastName = TextField_patientSearchLastName.getText().toString();

    		String searchPatientQuery = "SELECT * FROM patient WHERE patientFirstName Like  '%"+searchPatientFirstName+"%' OR PatientLastName Like '%"+searchPatientLastName+"%'";

    		PreparedStatement preparedStatement = connection.prepareStatement(searchPatientQuery);
    		//System.out.println(preparedStatement);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String patientID = resultSet.getString("patientID");
    			String patientFirstName = resultSet.getString("patientFirstName");
    			String patientMiddleName = resultSet.getString("patientMiddleName");
    			String patientLastName = resultSet.getString("patientLastName");
    			String patientGender = resultSet.getString("patientGender");
    			String patientSSN = resultSet.getString("patientSSN");
    			String patinetHeight = resultSet.getString("patinetHeight");
    			String patientWeight = resultSet.getString("patientWeight");
    			String patientDOB = resultSet.getString("patientDOB");

				SearchPatientList.add(new PatientModel(patientID, patientFirstName, patientMiddleName, patientLastName, patientGender, patientSSN, patinetHeight, patientWeight, patientDOB));
    		}

    		Column_patientID.setCellValueFactory(new PropertyValueFactory<>("patientID"));
    	    Column_patientName.setCellValueFactory(new PropertyValueFactory<>("patientFirstName"));

    	    Table_searchPatient.setItems(SearchPatientList);
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
}
