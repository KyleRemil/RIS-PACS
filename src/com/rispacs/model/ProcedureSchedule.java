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
	private StringProperty procedureStatus;
	private StringProperty procedureTime;

	public ProcedureSchedule(String procedureID, String patientID, String patientName, String modalityName, String procedureType, String procedureStatus, String procedureTime)
	{
		this.procedureID = new SimpleStringProperty(procedureID);
		this.patientName = new SimpleStringProperty(patientName);
		this.patientID = new SimpleStringProperty(patientID);
		this.modalityName = new SimpleStringProperty(modalityName);
		this.procedureType = new SimpleStringProperty(procedureType);
		this.procedureStatus = new SimpleStringProperty(procedureStatus);
		this.procedureTime = new SimpleStringProperty(procedureTime);
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
	public String getprocedureStatus()
	{
		return procedureStatus.get();
	}
	public String getprocedureTime()
	{
		return procedureTime.get();
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
	public void setprocedureStatus(String Value)
	{
		procedureStatus.set(Value);
	}
	public void setprocedureTime(String Value)
	{
		procedureTime.set(Value);
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
	public StringProperty procedureStatusProperty()
	{
		return procedureStatus;
	}
	public StringProperty procedureTimeProperty()
	{
		return procedureTime;
	}
}
