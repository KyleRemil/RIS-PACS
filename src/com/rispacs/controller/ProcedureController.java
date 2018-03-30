package com.rispacs.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import javax.imageio.ImageIO;

import com.rispacs.model.Context;
import com.rispacs.model.ModalityImage;
import com.rispacs.model.ProcedureSchedule;

import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyCode;
import javafx.scene.paint.Color;
import javafx.stage.FileChooser;

public class ProcedureController {

    @FXML private ImageView ImageView_procedureImage;
    @FXML private TableView<ModalityImage> Table_procedureImages;
    @FXML private TableColumn<ModalityImage, String> Column_imageID;
    @FXML private Button Button_nextImage;
    @FXML private Button Button_previousImage;
    @FXML private Button Button_takeImage;
    @FXML private Button Button_finalizeProcedure;
    @FXML private Button Button_saveImage;
    @FXML private Label Label_imageName;
    @FXML private Button Button_refresh_Table_procedureImages;

    TechnicianController technicianController = new TechnicianController();
    FileChooser fileChooser = new FileChooser();
    FileChooser.ExtensionFilter extFilterJPG = new FileChooser.ExtensionFilter("JPG files (*.jpg)", "*.JPG");
    FileChooser.ExtensionFilter extFilterJPEG = new FileChooser.ExtensionFilter("JPEG files (*.jpeg)", "*.JPEG");
    static File selectedFile;

    private ObservableList<ModalityImage> procedureImagesList;

    @FXML
    public void initialize() {

    	getCurrentProcedureImages(null);
    	
    	Table_procedureImages.setOnMouseClicked(event -> {
    		     setPreviewImage(Table_procedureImages.getSelectionModel().getSelectedItem());
    		});
    }

	@FXML
    void FinalizeProcedure(ActionEvent event) {

    }
    @FXML
    void SaveImage(ActionEvent event)
    {
    	System.out.println("SaveImage() Called");
    	Connection connection = null;
    	try
    	{
    		String selectedProcedureID = Context.getInstance().getCurrentProcedureID();
        	System.out.println(selectedProcedureID);
    		connection = DatabaseHandler.getConnection();
    		String fileName ="\""+ selectedFile.getName()+ "\"";
        	String filePath = selectedFile.getPath();
        	filePath = filePath.replace("\\", "/");

        	String saveImageQuery = "INSERT INTO modalityimage(modalityImageBlob, modalityImageName, procedure_procedureId) VALUES ( ?, ?, ?)";

        	if (fileName.length() >= 45)
        	{
        		fileName = fileName.substring(0, Math.min(fileName.length(), 40));
        	}

        	// 1MB Limit
        	long maximumFileSize=1000000;

        	FileInputStream fileinputstream = new FileInputStream(new File(filePath));
        	long selectedtFileSize = fileinputstream.getChannel().size();

        	if(selectedtFileSize <= maximumFileSize)
        	{
        		try
        		{
        			PreparedStatement preparedStatement = connection.prepareStatement(saveImageQuery);
        			preparedStatement.setBlob(1, fileinputstream);
        			preparedStatement.setString(2, fileName);
        			preparedStatement.setString(3, selectedProcedureID);
        			if (selectedProcedureID == null)
        			{
        				System.out.println("Selected ProcedureID is null");
        			}
        			else
        			{
            			preparedStatement.execute();
        			}
        			fileinputstream.close();
        		}
        		catch(SQLException e)
        		{
        			e.printStackTrace();
        		}
        	}
        	else if(selectedtFileSize > maximumFileSize)
        	{

        	}
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    	getCurrentProcedureImages(null);
    }
    @FXML
    void TakeImage(ActionEvent event) {
    	try
    	{
	    	fileChooser.getExtensionFilters().addAll(extFilterJPG,extFilterJPEG);
	    	selectedFile = fileChooser.showOpenDialog(null);
	    	if (selectedFile != null)
	    	{
	    		Label_imageName.setTextFill(Color.web("#fcff4c"));
	    		Label_imageName.setText("File selected: " + selectedFile.getName());
	    		Label_imageName.setVisible(true);
	    		setPreviewImage(selectedFile);
	    	}
	    	else
	    	{
	    		Label_imageName.setTextFill(Color.web("#dd1506"));
	    		Label_imageName.setText("File selection cancelled.");
	    		Label_imageName.setVisible(true);
	    	}
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    @FXML
    void getCurrentProcedureImages(ActionEvent event)
    {
    	System.out.println("getCurrentProcedureImages() Called");
    	String currentProcedureID = Context.getInstance().getCurrentProcedureID();
    	Connection connection = null;
        try
    	{
        	procedureImagesList = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllCurrentProcedureImages = "SELECT * FROM modalityimage WHERE procedure_procedureId =" + currentProcedureID;
    		PreparedStatement preparedStatement = connection.prepareStatement(getAllCurrentProcedureImages);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String modalityImageID = resultSet.getString("modalityImageID");
    			InputStream inputStream = resultSet.getBinaryStream("modalityImageBlob");
    			//BufferedImage image = ImageIO.read(inputStream);
    			javafx.scene.image.Image image = new Image(inputStream, ImageView_procedureImage.getFitWidth(), ImageView_procedureImage.getFitHeight(), true, true);
    			String modalityImageName = resultSet.getString("modalityImageName");
    			procedureImagesList.add(new ModalityImage (modalityImageID,image,modalityImageName));
    		}

    		Column_imageID.setCellValueFactory(new PropertyValueFactory<>("modalityImageName"));

    		Table_procedureImages.setItems(null);
    		Table_procedureImages.setItems(procedureImagesList);
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

                double ratioX = ImageView_procedureImage.getFitWidth() / image.getWidth();
                double ratioY = ImageView_procedureImage.getFitHeight() / image.getHeight();

                double reducCoeff = 0;
                if(ratioX >= ratioY)
                {
                    reducCoeff = ratioY;
                } else {
                    reducCoeff = ratioX;
                }

                w = image.getWidth() * reducCoeff;
                h = image.getHeight() * reducCoeff;

                ImageView_procedureImage.setX((ImageView_procedureImage.getFitWidth() - w) / 2);
                ImageView_procedureImage.setY((ImageView_procedureImage.getFitHeight() - h) / 2);

                ImageView_procedureImage.setImage(image);
        		ImageView_procedureImage.setPreserveRatio(true);
            }
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    private void setPreviewImage(File selectedFile){
    	try
    	{
    		javafx.scene.image.Image image = new Image(selectedFile.toURI().toString(), ImageView_procedureImage.getFitWidth(), ImageView_procedureImage.getFitHeight(), true, true);

    		if (image != null) {
                double w = 0;
                double h = 0;

                double ratioX = ImageView_procedureImage.getFitWidth() / image.getWidth();
                double ratioY = ImageView_procedureImage.getFitHeight() / image.getHeight();

                double reducCoeff = 0;
                if(ratioX >= ratioY)
                {
                    reducCoeff = ratioY;
                } else {
                    reducCoeff = ratioX;
                }

                w = image.getWidth() * reducCoeff;
                h = image.getHeight() * reducCoeff;

                ImageView_procedureImage.setX((ImageView_procedureImage.getFitWidth() - w) / 2);
                ImageView_procedureImage.setY((ImageView_procedureImage.getFitHeight() - h) / 2);

                ImageView_procedureImage.setImage(image);
        		ImageView_procedureImage.setPreserveRatio(true);
            }
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }

}