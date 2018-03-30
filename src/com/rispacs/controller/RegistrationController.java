package com.rispacs.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import com.jfoenix.controls.JFXDatePicker;

import application.DatabaseHandler;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Tab;
import javafx.scene.control.TextField;
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

}
