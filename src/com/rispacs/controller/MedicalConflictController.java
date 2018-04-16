package com.rispacs.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rispacs.model.Context;
import com.rispacs.model.ModalityWarningModel;
import com.rispacs.model.PatientModel;
import com.rispacs.model.ProcedureSchedule;

import application.DatabaseHandler;
import javafx.beans.property.StringProperty;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.layout.Pane;
import javafx.scene.text.Text;

public class MedicalConflictController {
    @FXML private Text Text_ModalityName;
    @FXML private TextArea TextArea_modalityWarnings;
    @FXML private Pane foundationPane;
    @FXML private Button Button_approve;
    @FXML private Button Button_deny;

    public void initialize(){
    	getMedicalFlags(Context.getInstance().getSelectedModalityTypeID());
    }
    private void getMedicalFlags(String string) {
    	Connection connection = null;
    	String warningModalityName = null;
    	String warningText = null;
        try
    	{
    		connection = DatabaseHandler.getConnection();
    		String getModalityWarningFlags = "SELECT modalitywarning.*,  modalitytype.modalityTypeName FROM modalitywarning, modalitytype WHERE modalitytype.modalityTypeId = modalitywarning.modalityType_modalityTypeId AND modalityType_modalityTypeId =" + string;

    		PreparedStatement preparedStatement = connection.prepareStatement(getModalityWarningFlags);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String modalityWarningID = resultSet.getString("modalityWarningID");
    			String modalityWarningDesc = resultSet.getString("modalityWarningDesc");
    			String modalityWarningModalityTypeID = resultSet.getString("modalityType_modalityTypeId");
    			String modaliyTypeName = resultSet.getString("modalitytype.modalityTypeName");

    			ModalityWarningModel modalityWarningModel = new ModalityWarningModel(modalityWarningID, modalityWarningDesc, modalityWarningModalityTypeID, modaliyTypeName);

    			warningModalityName = modalityWarningModel.getModaliyTypeName();
    			warningText = warningText + modalityWarningModel.getModalityWarningDesc();

    			populateModalityWarningBox(warningModalityName, warningText);
    		}
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
	private void populateModalityWarningBox(String warningModalityName, String warningText) {
		Text_ModalityName.setText(warningModalityName);
		TextArea_modalityWarnings.setText(warningText);
	}
	@FXML
    void approveFlag(ActionEvent event) {

    }
    @FXML
    void denyFlag(ActionEvent event) {

    }
}
