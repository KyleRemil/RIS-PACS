package com.rispacs.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class ArrivedPatientsModel
{
	private StringProperty patientName;
	private StringProperty patientID;

	public ArrivedPatientsModel(String patientID, String patientName)
	{
		this.patientName = new SimpleStringProperty(patientName);
		this.patientID = new SimpleStringProperty(patientID);
	}

	//Getters
	public String getpatientName()
	{
		return patientName.get();
	}
	public String getpatientID()
	{
		return patientID.get();
	}

	//setters
	public void setpatientName(String Value)
	{
		patientName.set(Value);
	}
	public void setpatientID(String Value)
	{
		patientID.set(Value);
	}

	//properties
	public StringProperty patientNameProperty()
	{
		return patientName;
	}
	public StringProperty patientIDProperty()
	{
		return patientID;
	}
}
