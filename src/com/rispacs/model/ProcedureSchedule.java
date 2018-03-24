package com.rispacs.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class ProcedureSchedule
{
	private StringProperty procedureID;
	private StringProperty patientName;
	private StringProperty patientID;
	private StringProperty modalityName;
	private StringProperty procedureType;

	public ProcedureSchedule(String procedureID, String patientID, String patientName, String modalityName, String procedureType)
	{
		this.procedureID = new SimpleStringProperty(procedureID);
		this.patientName = new SimpleStringProperty(patientName);
		this.patientID = new SimpleStringProperty(patientID);
		this.modalityName = new SimpleStringProperty(modalityName);
		this.procedureType = new SimpleStringProperty(procedureType);
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
	public String getmodalityName()
	{
		return modalityName.get();
	}
	public String getprocedureType()
	{
		return procedureType.get();
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
	public void setmodalityName(String Value)
	{
		modalityName.set(Value);
	}
	public void setprocedureType(String Value)
	{
		procedureType.set(Value);
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
	public StringProperty modalityNameProperty()
	{
		return modalityName;
	}
	public StringProperty procedureTypeProperty()
	{
		return procedureType;
	}
}
