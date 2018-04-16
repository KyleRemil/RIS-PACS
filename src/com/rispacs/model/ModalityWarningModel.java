package com.rispacs.model;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class ModalityWarningModel {

	private StringProperty modalityWarningID;
	private StringProperty modalityWarningDesc;
	private StringProperty modalityWarningModalityTypeID;
	private StringProperty modaliyTypeName;

	public ModalityWarningModel(String modalityWarningID, String modalityWarningDesc,
			String modalityWarningModalityTypeID, String modaliyTypeName) {
		this.modalityWarningID = new SimpleStringProperty(modalityWarningID);
		this.modalityWarningDesc = new SimpleStringProperty(modalityWarningDesc);
		this.modalityWarningModalityTypeID = new SimpleStringProperty(modalityWarningModalityTypeID);
		this.modaliyTypeName = new SimpleStringProperty(modaliyTypeName);
	}

	public String getModalityWarningID() {
		return modalityWarningID.get();
	}
	public String getModalityWarningDesc() {
		return modalityWarningDesc.get();
	}
	public String getModalityWarningModalityTypeID() {
		return modalityWarningModalityTypeID.get();
	}
	public String getModaliyTypeName() {
		return modaliyTypeName.get();
	}

	public void setModalityWarningID(String Value) {
		modalityWarningID.set(Value);
	}
	public void setModalityWarningDesc(String Value) {
		modalityWarningDesc.set(Value);
	}
	public void setModalityWarningModalityTypeID(String Value) {
		modalityWarningModalityTypeID.set(Value);
	}
	public void setModaliyTypeName(String Value) {
		modaliyTypeName.set(Value);
	}
}
