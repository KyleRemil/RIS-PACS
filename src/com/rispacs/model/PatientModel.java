package com.rispacs.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class PatientModel
{
	private StringProperty patientID;
	private StringProperty patientFirstName;
	private StringProperty patientMiddleName;
	private StringProperty patientLastName;
	private StringProperty patientGender;
 	private StringProperty patientSSN;
 	private StringProperty patinetHeight;
 	private StringProperty patientWeight;
 	private StringProperty patientDOB;

 	public PatientModel(String patientID, String patientFirstName, String patientMiddleName, String patientLastName, String patientGender, String patientSSN, String patinetHeight, String patientWeight, String patientDOB)
 	{
		this.patientID = new SimpleStringProperty(patientID);
		this.patientFirstName = new SimpleStringProperty(patientFirstName);
		this.patientMiddleName = new SimpleStringProperty(patientMiddleName);
		this.patientLastName = new SimpleStringProperty(patientLastName);
		this.patientGender = new SimpleStringProperty(patientGender);
		this.patientSSN = new SimpleStringProperty(patientSSN);
		this.patinetHeight = new SimpleStringProperty(patinetHeight);
		this.patientWeight = new SimpleStringProperty(patientWeight);
		this.patientDOB = new SimpleStringProperty(patientDOB);
	}

	public String getPatientID() {
		return patientID.get();
	}
	public String getPatientFirstName() {
		return patientFirstName.get();
	}
	public String getPatientMiddleName() {
		return patientMiddleName.get();
	}
	public String getPatientLastName() {
		return patientLastName.get();
	}
	public String getPatientGender() {
		return patientGender.get();
	}
	public String getPatientSSN() {
		return patientSSN.get();
	}
	public String getPatinetHeight() {
		return patinetHeight.get();
	}
	public String getPatientWeight() {
		return patientWeight.get();
	}
	public String getPatientDOB() {
		return patientDOB.get();
	}

	public void setPatientID(String Value) {
		patientID.set(Value);
	}
	public void setPatientFirstName(String Value) {
		patientFirstName.set(Value);
	}
	public void setPatientMiddleName(String Value) {
		patientMiddleName.set(Value);
	}
	public void setPatientLastName(String Value) {
		patientLastName.set(Value);
	}
	public void setPatientGender(String Value) {
		patientGender.set(Value);
	}
	public void setPatientSSN(String Value) {
		patientSSN.set(Value);
	}
	public void setPatinetHeight(String Value) {
		patinetHeight.set(Value);
	}
	public void setPatientWeigh(String Value) {
		patientWeight.set(Value);
	}
	public void setPatientDOB(String Value) {
		patientDOB.set(Value);
	}

	public StringProperty patientIDProperty() {
		return patientID;
	}
	public StringProperty patientFirstNameProperty() {
		return patientFirstName;
	}
	public StringProperty patientMiddleNameProperty() {
		return patientMiddleName;
	}
	public StringProperty patientLastNameProperty() {
		return patientLastName;
	}
	public StringProperty patientGenderProperty() {
		return patientGender;
	}
	public StringProperty patientSSNProperty() {
		return patientSSN;
	}
	public StringProperty patinetHeightProperty() {
		return patinetHeight;
	}
	public StringProperty patientWeightProperty() {
		return patientWeight;
	}
	public StringProperty patientDOBProperty() {
		return patientDOB;
	}
}
