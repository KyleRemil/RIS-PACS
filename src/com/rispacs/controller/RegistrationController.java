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
import com.mysql.jdbc.StringUtils;
import com.rispacs.model.PatientModel;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.util.StringConverter;

public class RegistrationController {

    @FXML private Button registration_Button_RegisterNewPatient;
    @FXML private ComboBox<MaritalStatus> registration_ComboBox_PatientMaritalStatus;
    @FXML private ComboBox<Gender> registration_ComboBox_PatientGender;

    @FXML private Label registration_Title_PatientName;
    @FXML private Label registration_Title_PatientDOB;
    @FXML private Label registration_Title_PatientSSN;
    @FXML private Label registration_Title_PatientHeight;
    @FXML private Label registration_Title_PatientWeight;
    @FXML private Label registration_Title_PatientGender;

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

    private ObservableList<PatientModel> SearchPatientList;
    private ObservableList<MaritalStatus> maritalStatusList;
    private ObservableList<Gender> genderList;

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

    	Button_SearchPatient.setDisable(true);
    	TextField_patientSearchFirstName.setOnKeyPressed(event -> {
    		if(event.getCode() == KeyCode.ENTER)
    			SearchPatient();
  		});
    	TextField_patientSearchLastName.setOnKeyPressed(event -> {
    		if(event.getCode() == KeyCode.ENTER)
    			SearchPatient();
  		});
    	TextField_patientSearchFirstName.textProperty().addListener((obs, oldText, newText) -> {
    	    System.out.println("Text of 1st name search changed from "+oldText+" to "+newText);
    	    UpdateSearchButtonState();
    	    SearchPatient(); //This could be an AJAX-like thing
    	});
    	TextField_patientSearchLastName.textProperty().addListener((obs, oldText, newText) -> {
    	    System.out.println("Text of last name search changed from "+oldText+" to "+newText);
    	    UpdateSearchButtonState();
    	    SearchPatient(); //This could be an AJAX-like thing
    	});

    	PopulateMartialStatusComboBox();
    	PopulateGenderComboBox();

    }

    private void PopulateMartialStatusComboBox()
    {
    	maritalStatusList = FXCollections.observableArrayList();
    	MaritalStatus maritalStatusS = new MaritalStatus("Single");
    	MaritalStatus maritalStatusM = new MaritalStatus("Married");
    	MaritalStatus maritalStatusD = new MaritalStatus("Divorced");

    	maritalStatusList.addAll(maritalStatusS,maritalStatusM, maritalStatusD);

    	registration_ComboBox_PatientMaritalStatus.setItems(maritalStatusList);

    	registration_ComboBox_PatientMaritalStatus.setConverter(new StringConverter<MaritalStatus>()
    	{
            @Override
            public String toString(MaritalStatus object)
            {
                return object.getMaritalStatusName();
            }
            @Override
            public MaritalStatus fromString(String string)
            {
                return null; // No conversion fromString needed.
            }
        });
    }

    private void PopulateGenderComboBox()
    {
    	genderList = FXCollections.observableArrayList();
    	Gender genderMale = new Gender("M","Male");
    	Gender genderFemale = new Gender("F","Female");

    	genderList.addAll(genderMale,genderFemale);

    	registration_ComboBox_PatientGender.setItems(genderList);

    	registration_ComboBox_PatientGender.setConverter(new StringConverter<Gender>()
    	{
            @Override
            public String toString(Gender object)
            {
                return object.getGenderDescription();
            }
            @Override
            public Gender fromString(String string)
            {
                return null; // No conversion fromString needed.
            }
        });
    }

    private class MaritalStatus
    {
        private final String maritalStatusName;

        public MaritalStatus(String maritalStatusName){
            this.maritalStatusName = maritalStatusName;
        }
        public String getMaritalStatusName(){
            return maritalStatusName;
        }
    }
    private class Gender
    {
    	private String genderID;
        private String genderDescription;

        public Gender(String genderID, String genderDescription){
            this.genderID = genderID;
        	this.genderDescription = genderDescription;
        }
        public String getGenderDescription(){
            return genderDescription;
        }
        public String getGenderID(){
            return genderID;
        }
    }

    private void PopulatePatientInformation(PatientModel patientModel)
    {
    	int genderIndex = 0;
    	registration_TextField_PatientMiddleName.setText(patientModel.getPatientMiddleName());
        registration_TextField_PatientSSN.setText(patientModel.getPatientSSN());
        registration_TextField_PatientWeight.setText(patientModel.getPatientWeight());
        registration_TextField_PatientHeight.setText(patientModel.getPatinetHeight());
        registration_TextField_PatientFirstName.setText(patientModel.getPatientFirstName());
        registration_TextField_PatientLastName.setText(patientModel.getPatientLastName());

        String patientGender = patientModel.getPatientGender();
        System.out.println();
        switch (patientGender)
        {
        	case "M":
        		genderIndex = 0;
        		break;
        	case "F":
        		genderIndex = 1;
        		break;
        	default:
        }

        registration_ComboBox_PatientGender.getSelectionModel().select(genderIndex);
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
		//TextField_patientSearchFirstName.setText("hi");
		//TextField_patientSearchLastName.textProperty().setValue("hello!");

    	////System.out.println("RequestRegisterNewPatient() Called");
    	if (validateRequiredFields())	//If no required fields are empty
    	{
    		registration_Title_PatientName.setStyle(null);
    		registration_Title_PatientSSN.setStyle(null);
    		registration_Title_PatientSSN.setStyle(null);
    		registration_Title_PatientDOB.setStyle(null);
    		registration_Title_PatientHeight.setStyle(null);
    		registration_Title_PatientWeight.setStyle(null);
    		registration_Title_PatientGender.setStyle(null);
    		insertNewPatient();
    	}
    	else
    	{
    		System.out.println("Required Fields Cannot Be Empty");
    	}
    }
    private void insertNewPatient()
    {
    	//System.out.println("insertNewPatient() Called");
    	Connection connection = null;
        try
    	{
        	String patientFirstName = registration_TextField_PatientFirstName.getText().toString();
        	String patientMiddleName = registration_TextField_PatientMiddleName.getText().toString();
        	String patientLastName = registration_TextField_PatientLastName.getText().toString();
        	String patientSSN = registration_TextField_PatientSSN.getText().toString();
        	String patientHeight = registration_TextField_PatientHeight.getText().toString();
        	String patientWeight = registration_TextField_PatientWeight.getText().toString();
        	String patientGender = registration_ComboBox_PatientGender.getSelectionModel().getSelectedItem().getGenderID();

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
    		preparedStatement.setString (4, patientGender);
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
				clearPatientInformation();
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

    	if(StringUtils.isNullOrEmpty(registration_TextField_PatientFirstName.getText()))
    	{
    		registration_Title_PatientName.setStyle("-fx-text-fill: red;");
    		System.out.println("First Name cannot be empty");
    		isValidated = false;
    	}
    	if (StringUtils.isNullOrEmpty(registration_TextField_PatientLastName.getText()))
    	{
    		registration_Title_PatientName.setStyle("-fx-text-fill: red;");
    		System.out.println("Last Name cannot be empty");
    		isValidated = false;
    	}
    	if (StringUtils.isNullOrEmpty(registration_TextField_PatientSSN.getText()))
    	{
    		registration_Title_PatientSSN.setStyle("-fx-text-fill: red;");
    		System.out.println("SSN cannot be empty");
    		isValidated = false;
    	}
    	if (registration_TextField_PatientDOB.getValue() == null)
    	{
    		registration_Title_PatientDOB.setStyle("-fx-text-fill: red;");
    		System.out.println("Patient DOB cannot be empty");
    		isValidated = false;
    	}
    	if (StringUtils.isNullOrEmpty(registration_TextField_PatientHeight.getText()))
    	{
    		registration_Title_PatientHeight.setStyle("-fx-text-fill: red;");
    		System.out.println("Patient Height must not be empty");
    		isValidated = false;
    	}
    	if (StringUtils.isNullOrEmpty(registration_TextField_PatientWeight.getText()))
    	{
    		registration_Title_PatientWeight.setStyle("-fx-text-fill: red;");
    		System.out.println("Patient weight must not be empty");
    		isValidated = false;
    	}
    	if (registration_ComboBox_PatientGender.getSelectionModel().isEmpty() == true)
    	{
    		registration_Title_PatientGender.setStyle("-fx-text-fill: red;");
    		System.out.println("Patient Gender must not be empty");
    		isValidated = false;
    	}


    	if(!StringUtils.isNullOrEmpty(registration_TextField_PatientFirstName.getText()))
    	{
    		registration_Title_PatientName.setStyle(null);
    	}
    	if(!StringUtils.isNullOrEmpty(registration_TextField_PatientLastName.getText()))
    	{
    		registration_Title_PatientName.setStyle(null);
    	}
    	if (!StringUtils.isNullOrEmpty(registration_TextField_PatientSSN.getText()))
    	{
    		registration_Title_PatientSSN.setStyle(null);
    	}
    	if (registration_TextField_PatientDOB.getValue() != null)
    	{
    		registration_Title_PatientDOB.setStyle(null);
    	}
    	if (!StringUtils.isNullOrEmpty(registration_TextField_PatientHeight.getText()))
    	{
    		registration_Title_PatientHeight.setStyle(null);
    	}
    	if (!StringUtils.isNullOrEmpty(registration_TextField_PatientWeight.getText()))
    	{
    		registration_Title_PatientWeight.setStyle(null);
    	}
    	if (registration_ComboBox_PatientGender.getSelectionModel().isEmpty() != true)
    	{
    		registration_Title_PatientGender.setStyle(null);
    	}

		return isValidated;
    }
    @FXML
    void updatePatient(ActionEvent event)
    {
    	registration_Button_UpdatePatient.setDisable(true);
    	//System.out.println("insertNewPatient() Called");
    	Connection connection = null;
    	String patientFirstName = registration_TextField_PatientFirstName.getText().toString();
    	String patientMiddleName = registration_TextField_PatientMiddleName.getText().toString();
    	String patientLastName = registration_TextField_PatientLastName.getText().toString();
    	String patientSSN = registration_TextField_PatientSSN.getText().toString();
    	String patientHeight = registration_TextField_PatientHeight.getText().toString();
    	String patientWeight = registration_TextField_PatientWeight.getText().toString();
    	String patientGender = registration_ComboBox_PatientGender.getSelectionModel().getSelectedItem().getGenderID();
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
    		preparedStatement.setString (4, patientGender);
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
				connection.close();
				clearPatientInformation();
				SearchPatient();

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
        registration_ComboBox_PatientMaritalStatus.valueProperty().set(null);
        registration_ComboBox_PatientGender.valueProperty().set(null);
        registration_Button_RegisterNewPatient.setDisable(false);
        registration_Button_UpdatePatient.setDisable(true);
	}
    @FXML
    void SearchPatient()//ActionEvent event)
    {

    	//System.out.println("SearchPatient() Called");
    	//registration_Button_UpdatePatient.setDisable(false);
    	Connection connection = null;
        try
    	{
    		connection = DatabaseHandler.getConnection();

    		SearchPatientList = FXCollections.observableArrayList();

    		String searchPatientFirstName = TextField_patientSearchFirstName.getText().toString();
        	String searchPatientLastName = TextField_patientSearchLastName.getText().toString();

        	boolean firstNull = StringUtils.isNullOrEmpty(searchPatientFirstName);//(searchPatientFirstName == null) || searchPatientFirstName.isEmpty()
        	//System.out.println("Empty string: " + StringUtils.isNullOrEmpty(""));
        	//System.out.println("Null string: " + StringUtils.isNullOrEmpty(null));
        	boolean lastNull = (searchPatientLastName == null) || searchPatientLastName.isEmpty();

        	System.out.println("First: " + firstNull + "\nLast: " + lastNull);
        	if(firstNull && lastNull)
        	{
        		System.out.println("No search text");
        		return;
        	}
    		//String searchPatientQuery = "SELECT * FROM patient WHERE patientFirstName Like  '%"+searchPatientFirstName+"%' OR PatientLastName Like '%"+searchPatientLastName+"%'";

    		String searchPatientQuery = "SELECT * FROM patient" + ((!firstNull || !lastNull)? " WHERE" +
    				((!firstNull)? " patientFirstName Like  ?" + ((!lastNull)?" AND ": " "):" ") +
    				((!lastNull)? " PatientLastName Like ?" : " ") : "");
    		PreparedStatement preparedStatement = connection.prepareStatement(searchPatientQuery);
    		System.out.println(searchPatientQuery);
    		if(!firstNull) {
    			preparedStatement.setString(1, "%" + searchPatientFirstName + "%");
    			if(!lastNull)
    				preparedStatement.setString(2, "%" + searchPatientLastName + "%");
    		}
    		else
    			preparedStatement.setString(1, "%" + searchPatientLastName + "%");

    		System.out.println(preparedStatement);
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
    private void UpdateSearchButtonState()
    {
    	//System.out.println("UpdateSearchButton running");
    	boolean b1 = StringUtils.isNullOrEmpty(TextField_patientSearchFirstName.getText().toString());
    	boolean b2 = StringUtils.isNullOrEmpty(TextField_patientSearchLastName.getText().toString());
    	if(b1 && b2)
    		Button_SearchPatient.setDisable(true);
    	else
    		Button_SearchPatient.setDisable(false);
    }
    @FXML
    void ClearPatientForm(ActionEvent event) {
    	registration_Button_RegisterNewPatient.setDisable(false);
    	registration_Button_UpdatePatient.setDisable(true);
    	clearPatientInformation();
    }

}
