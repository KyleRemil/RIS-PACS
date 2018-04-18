package com.rispacs.controller;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rispacs.model.CompletedProcedureModel;
import com.rispacs.model.Context;
import com.rispacs.model.ModalityImage;
import com.rispacs.model.PatientModel;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class RadiologistController {

    @FXML private ImageView ImageView_patientProcedureImage;
    @FXML private TableView<?> Table_patientProcedures;
    @FXML private TableColumn<?, ?> Column_patientProcedures;
    @FXML private Button Button_nextImage;
    @FXML private Button Button_previousImage;
    @FXML private TableView<CompletedProcedureModel> Table_patients;
    @FXML private TableColumn<CompletedProcedureModel, String> Column_procedureID;
    @FXML private TableColumn<CompletedProcedureModel, String> Column_patientName;
    @FXML private Button Button_refreshTable_patients;
    @FXML private Button Button_submitReport;
    @FXML private TableView<ModalityImage> Table_ProcedureImages;
    @FXML private TableColumn<ModalityImage, String> Column_ImageName;
    @FXML private TextArea TextArea_report;

    @FXML private Text patientID;
    @FXML private Text patientDOB;
    @FXML private Text patientName;
    @FXML private Text patientHeight;
    @FXML private Text patientGender;
    @FXML private Text patientWeight;

    private ObservableList<CompletedProcedureModel> completedProcedureList;
    private ObservableList<ModalityImage> procedureImagesList;

    private String currentProcedureID;

    public void initialize() {
    	Table_patients.setOnMouseClicked(event -> {
    		if(Table_patients.getSelectionModel().getSelectedItem() != null){
    			currentProcedureID = Table_patients.getSelectionModel().getSelectedItem().getprocedureID();
    			setPatientInfo();
    			getProcedureImages(Table_patients.getSelectionModel().getSelectedItem().getprocedureID());
    		}
		});
    	Table_ProcedureImages.setOnMouseClicked(event -> {
    		if(Table_ProcedureImages.getSelectionModel().getSelectedItem() != null){
    			setPreviewImage(Table_ProcedureImages.getSelectionModel().getSelectedItem());
    		}
		});

    	Button_nextImage.setOnMouseClicked(event -> {
    		if(Table_ProcedureImages.getSelectionModel().getSelectedItem() != null){
    			if(Table_ProcedureImages.getSelectionModel().getSelectedIndex() != Table_ProcedureImages.getItems().size() - 1)
    				Table_ProcedureImages.getSelectionModel().selectNext();
    			else
    				Table_ProcedureImages.getSelectionModel().selectFirst();
    			ModalityImage img = Table_ProcedureImages.getSelectionModel().getSelectedItem();
    			setPreviewImage(img);
    		}
    	});
    	Button_previousImage.setOnMouseClicked(event -> {
    		if(Table_ProcedureImages.getSelectionModel().getSelectedItem() != null){
    			if(Table_ProcedureImages.getSelectionModel().getSelectedIndex() != 0)
    				Table_ProcedureImages.getSelectionModel().selectPrevious();
    			else
    				Table_ProcedureImages.getSelectionModel().selectLast();
    			ModalityImage img = Table_ProcedureImages.getSelectionModel().getSelectedItem();
    			setPreviewImage(img);
    		}
    	});
    }
    @FXML
    void refreshTable_patients(ActionEvent event) {
    	getAllCompletedProcedure();
    }
    @FXML
    void submitReport(ActionEvent event)
    {
    	String reportText = TextArea_report.getText().toString();

    	try{
	    	if (reportText.trim() == null || reportText.trim() == "")
	    	{

	    	}
	    	else
	    	{
	        	Connection connection = null;
	        	try
	        	{
	        		String procedureID = Table_patients.getSelectionModel().getSelectedItem().getprocedureID();
	        		connection = DatabaseHandler.getConnection();
	            	String saveReportQuery = "INSERT INTO report (reportText, procedure_procedureId, staffid_Radiologist) VALUES (?, ?, ?)";
	            	int currentStaffID = Context.getInstance().getStaffId();
	            	PreparedStatement preparedStatement = connection.prepareStatement(saveReportQuery);
        			preparedStatement.setString(1, reportText);
        			preparedStatement.setString(2, procedureID);
        			preparedStatement.setString(3, Integer.toString(currentStaffID));

        			preparedStatement.execute();
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
	    				TextArea_report.setText(null);
	    				Table_patientProcedures.getItems().clear();
	    				Table_ProcedureImages.getItems().clear();

	    				UpdateProcedureToReportComplete();
	    			}
	        		catch (SQLException e)
	        		{
	    				// TODO Auto-generated catch block
	    				e.printStackTrace();
	    			}
	        	}
	    	}
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    void UpdateProcedureToReportComplete()
   	{
   		System.out.println("UpdateProcedureToReportComplete() Called");
       	Connection connection = null;
       	try
       	{
       		connection = DatabaseHandler.getConnection();

           	String updateProcedureToProcedureCompleteQuery = "UPDATE procedurelist SET procedurestatus_procedureStatusID = 4 WHERE procedureId=" + currentProcedureID;

           	PreparedStatement preparedStatement = connection.prepareStatement(updateProcedureToProcedureCompleteQuery);
           	preparedStatement.execute();
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

   				currentProcedureID = null;
   				ImageView_patientProcedureImage.setImage(null);
   				getAllCompletedProcedure();
   			}
       		catch (SQLException e)
       		{
   				// TODO Auto-generated catch block
   				e.printStackTrace();
   			}
       	}
    }
    void getAllRelevantPatientProcedures()
    {
    	System.out.println("getAllCompletedProcedure() Called");
    	Connection connection = null;
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		completedProcedureList = FXCollections.observableArrayList();

    		String getAllCompletedProceduresQuery = "SELECT procedureID, patientID, patient.patientFirstName, patient.patientLastName, patient.* "
    				+ "FROM procedurelist, patient "
    				+ "Where patient.patientID = procedurelist.patient_patientID AND procedurestatus_procedureStatusID = 3";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllCompletedProceduresQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String procedureID = resultSet.getString("procedureID");
				String patientFirstName = resultSet.getString("patient.patientFirstName");
				String patientLastName = resultSet.getString("patient.patientLastName");
				String patientID = resultSet.getString("patientID");
				String patientFullName = patientFirstName + " " + patientLastName;

				PatientModel patientModel = new PatientModel (
						resultSet.getString("patientID"),
						resultSet.getString("patientFirstName"),
						resultSet.getString("patientMiddleName"),
						resultSet.getString("patientLastName"),
						resultSet.getString("patientGender"),
						"",
						resultSet.getString("patinetHeight"),
						resultSet.getString("patientWeight"),
						resultSet.getString("patientDOB"));


				completedProcedureList.add(new CompletedProcedureModel (procedureID, patientFullName, patientID, patientModel));
    		}

    		Column_procedureID.setCellValueFactory(new PropertyValueFactory<>("patientID"));
    		Column_patientName.setCellValueFactory(new PropertyValueFactory<>("patientName"));

    		Table_patients.setItems(null);
    		Table_patients.setItems(completedProcedureList);
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
    void getProcedureImages(String procedureID)
    {
    	System.out.println("getCurrentProcedureImages() Called");
    	Connection connection = null;
        try
    	{
        	procedureImagesList = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllCurrentProcedureImages = "SELECT * FROM modalityimage WHERE procedure_procedureId =" + procedureID;
    		PreparedStatement preparedStatement = connection.prepareStatement(getAllCurrentProcedureImages);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String modalityImageID = resultSet.getString("modalityImageID");
    			InputStream inputStream = resultSet.getBinaryStream("modalityImageBlob");
    			//BufferedImage image = ImageIO.read(inputStream);
    			javafx.scene.image.Image image = new Image(inputStream, ImageView_patientProcedureImage.getFitWidth(), ImageView_patientProcedureImage.getFitHeight(), true, true);
    			String modalityImageName = resultSet.getString("modalityImageName");
    			procedureImagesList.add(new ModalityImage (modalityImageID,image,modalityImageName));
    		}

    		Column_ImageName.setCellValueFactory(new PropertyValueFactory<>("modalityImageName"));

    		Table_ProcedureImages.setItems(null);
    		Table_ProcedureImages.setItems(procedureImagesList);
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
    private void setPreviewImage(ModalityImage mi)
    {
    	try
    	{
    		javafx.scene.image.Image image = mi.getImage();

    		if (image != null) {
                double w = 0;
                double h = 0;

                double ratioX = ImageView_patientProcedureImage.getFitWidth() / image.getWidth();
                double ratioY = ImageView_patientProcedureImage.getFitHeight() / image.getHeight();

                double reducCoeff = 0;
                if(ratioX >= ratioY)
                {
                    reducCoeff = ratioY;
                } else {
                    reducCoeff = ratioX;
                }

                w = image.getWidth() * reducCoeff;
                h = image.getHeight() * reducCoeff;

                ImageView_patientProcedureImage.setX((ImageView_patientProcedureImage.getFitWidth() - w) / 2);
                ImageView_patientProcedureImage.setY((ImageView_patientProcedureImage.getFitHeight() - h) / 2);

                ImageView_patientProcedureImage.setImage(image);
                ImageView_patientProcedureImage.setPreserveRatio(true);
            }
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    void getAllCompletedProcedure()
    {
    	System.out.println("getAllCompletedProcedure() Called");
    	Connection connection = null;
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		completedProcedureList = FXCollections.observableArrayList();

    		String getAllCompletedProceduresQuery = "SELECT procedureID, patientID, patient.patientFirstName, patient.patientLastName, patient.*"
    				+ "FROM procedurelist, patient "
    				+ "Where patient.patientID = procedurelist.patient_patientID AND procedurestatus_procedureStatusID = 3";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllCompletedProceduresQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String procedureID = resultSet.getString("procedureID");
				String patientFirstName = resultSet.getString("patient.patientFirstName");
				String patientLastName = resultSet.getString("patient.patientLastName");
				String patientID = resultSet.getString("patientID");
				String patientFullName = patientFirstName + " " + patientLastName;


				PatientModel patientModel = new PatientModel (
						resultSet.getString("patientID"),
						resultSet.getString("patientFirstName"),
						resultSet.getString("patientMiddleName"),
						resultSet.getString("patientLastName"),
						resultSet.getString("patientGender"),
						"",
						resultSet.getString("patinetHeight"),
						resultSet.getString("patientWeight"),
						resultSet.getString("patientDOB"));

				completedProcedureList.add(new CompletedProcedureModel (procedureID, patientFullName, patientID, patientModel));
    		}

    		Column_procedureID.setCellValueFactory(new PropertyValueFactory<>("patientID"));
    		Column_patientName.setCellValueFactory(new PropertyValueFactory<>("patientName"));

    		Table_patients.setItems(null);
    		Table_patients.setItems(completedProcedureList);
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

    public void setPatientInfo()
    {
    	PatientModel patient = Table_patients.getSelectionModel().getSelectedItem().getPatietModel();
    	patientID.setText(patient.getPatientID());
        patientDOB.setText(patient.getPatientDOB());
        patientName.setText(patient.getPatientLastName() + ", " + patient.getPatientFirstName() + " " + patient.getPatientMiddleName().charAt(0)+ ".");
        patientHeight.setText(patient.getPatinetHeight());
        patientGender.setText(patient.getPatientGender());
        patientWeight.setText(patient.getPatientWeight());
    }

}
