package com.rispacs.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class CompletedProcedureModel
{
	private StringProperty procedureID;
	private StringProperty patientName;
	private StringProperty patientID;

	private PatientModel patientModel;
	
	private StringProperty timestamp;

	public CompletedProcedureModel(String procedureID, String patientName, String patientID, PatientModel patientModel, String timestamp) {
		this.procedureID = new SimpleStringProperty(procedureID);
		this.patientName = new SimpleStringProperty(patientName);
		this.patientID = new SimpleStringProperty(patientID);
		this.patientModel = patientModel;
		this.timestamp = new SimpleStringProperty(timestamp);
	}

	public PatientModel getPatietModel()
	{
		return patientModel;
	}

	//Getters
	public String getprocedureID()
	{
		return procedureID.get();
	}
	public String getpatientName()
	{
		return patientName.get();
	}
	public String getpatientID()
	{
		return patientID.get();
	}


	//setters
	public void setprocedureID(String Value)
	{
		procedureID.set(Value);
	}
	public void setpatientName(String Value)
	{
		patientName.set(Value);
	}
	public void setpatientID(String Value)
	{
		patientID.set(Value);
	}

	//properties
	public StringProperty procedureIDProperty()
	{
		return procedureID;
	}
	public StringProperty patientNameProperty()
	{
		return patientName;
	}
	public StringProperty patientIDProperty()
	{
		return patientID;
	}
	
	public StringProperty timeProperty()
	{
		return timestamp;
	}
}
