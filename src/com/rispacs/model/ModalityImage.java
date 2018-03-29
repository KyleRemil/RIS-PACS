package com.rispacs.model;

import java.io.File;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

public class ModalityImage
{
	private StringProperty modalityImageID;
	private StringProperty modalityImageName;

	public ModalityImage(String modalityImageID,String modalityImageName)
	{
		this.modalityImageID = new SimpleStringProperty(modalityImageID);
		this.modalityImageName = new SimpleStringProperty(modalityImageName);

	}

	public String getmodalityImageID(){
		return modalityImageID.get();
	}
	public void setmodalityImageID(String Value){
		modalityImageID.set(Value);
	}
	public StringProperty modalityImageIDProperty(){
		return modalityImageID;
	}

	public String getmodalityImageName(){
		return modalityImageName.get();
	}
	public void setmodalityImageName(String Value){
		modalityImageName.set(Value);
	}
	public StringProperty modalityImageNameProperty(){
		return modalityImageName;
	}
}
