package models;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class ProcedureListModel
{
	private StringProperty modalityName;
	private StringProperty procedureTypeDesc;
	private StringProperty modalityTechnician;
	private StringProperty dateOfRequest;
	private StringProperty scheduledDate;
	private StringProperty scheduledTime;
	private StringProperty procedureStatus;

	public ProcedureListModel(String modalityName, String procedureTypeDesc, String modalityTechnician, String dateOfRequest, String scheduledDate, String scheduledTime, String procedureStatus)
	{
		this.modalityName = new SimpleStringProperty(modalityName);
		this.procedureTypeDesc = new SimpleStringProperty(procedureTypeDesc);
		this.modalityTechnician = new SimpleStringProperty(modalityTechnician);
		this.dateOfRequest = new SimpleStringProperty(dateOfRequest);
		this.scheduledDate = new SimpleStringProperty(scheduledDate);
		this.scheduledTime = new SimpleStringProperty(scheduledTime);
		this.procedureStatus = new SimpleStringProperty(procedureStatus);
	}

	public String getpatientName(){
		return modalityName.get();
	}
	public void setpatientName(String Value){
		modalityName.set(Value);
	}
	public StringProperty modalityNameProperty(){
		return modalityName;
	}
	public String getprocedureTypeDesc(){
		return procedureTypeDesc.get();
	}
	public void setprocedureTypeDesc(String Value){
		procedureTypeDesc.set(Value);
	}
	public StringProperty procedureTypeDescProperty(){
		return procedureTypeDesc;
	}
	public String getmodalityTechnician(){
		return modalityTechnician.get();
	}
	public void setmodalityTechnician(String Value){
		modalityTechnician.set(Value);
	}
	public StringProperty modalityTechnicianProperty(){
		return modalityTechnician;
	}
	public String getdateOfRequest(){
		return dateOfRequest.get();
	}
	public void setdateOfRequest(String Value){
		dateOfRequest.set(Value);
	}
	public StringProperty dateOfRequestProperty(){
		return dateOfRequest;
	}
	public String getscheduledDate(){
		return scheduledDate.get();
	}
	public void setscheduledDate(String Value){
		scheduledDate.set(Value);
	}
	public StringProperty scheduledDateProperty(){
		return scheduledDate;
	}
	public String getscheduledTime(){
		return scheduledTime.get();
	}
	public void setscheduledTime(String Value){
		scheduledTime.set(Value);
	}
	public StringProperty scheduledTimeProperty(){
		return scheduledTime;
	}
	public String getprocedureStatus(){
		return procedureStatus.get();
	}
	public void setprocedureStatus(String Value){
		procedureStatus.set(Value);
	}
	public StringProperty procedureStatusProperty(){
		return procedureStatus;
	}
}
