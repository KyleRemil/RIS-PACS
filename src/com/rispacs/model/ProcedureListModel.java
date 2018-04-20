package com.rispacs.model;

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
	private StringProperty procedureId;
	private boolean patientPaid;

	public ProcedureListModel(String modalityName, String procedureTypeDesc, String modalityTechnician, String dateOfRequest, String scheduledDate, String procedureStatus, String procedureId, boolean patientPaid)
	{
		this.modalityName = new SimpleStringProperty(modalityName);
		this.procedureTypeDesc = new SimpleStringProperty(procedureTypeDesc);
		this.modalityTechnician = new SimpleStringProperty(modalityTechnician);
		this.dateOfRequest = new SimpleStringProperty(dateOfRequest);
		this.scheduledDate = new SimpleStringProperty(scheduledDate);
		this.procedureStatus = new SimpleStringProperty(procedureStatus);
		this.procedureId = new SimpleStringProperty(procedureId);
		this.patientPaid = patientPaid;
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
	public String getProcedureId() {
		return procedureId.get();
	}

	public StringProperty procedureIdProperty() {
		return procedureId;
	}

	public void setProcedureId(String procedureId) {
		this.procedureId.set(procedureId);
	}


	public boolean getPatientPaid() {
		return patientPaid;
	}

	public void setPatientPaid(boolean patientPaid) {
		this.patientPaid = patientPaid;
	}

}
