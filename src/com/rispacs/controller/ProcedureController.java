package com.rispacs.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.rispacs.model.Context;
import com.rispacs.model.ModalityImage;
import application.DatabaseHandler;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.paint.Color;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

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
    @FXML private TextArea TextArea_modalityImageNotes;
    TechnicianController technicianController = new TechnicianController();
    FileChooser fileChooser = new FileChooser();
    FileChooser.ExtensionFilter extFilterJPG = new FileChooser.ExtensionFilter("JPG files (*.jpg)", "*.JPG");
    FileChooser.ExtensionFilter extFilterJPEG = new FileChooser.ExtensionFilter("JPEG files (*.jpeg)", "*.JPEG");
    static File selectedFile;

    private ObservableList<ModalityImage> procedureImagesList;

    @FXML
    public void initialize() {

    	getCurrentProcedureImages(null);
    	Button_finalizeProcedure.setDisable(true);
    	Table_procedureImages.setOnMouseClicked(event -> {
    		     setPreviewImage(Table_procedureImages.getSelectionModel().getSelectedItem());
    		});

    	Button_saveImage.setDisable(true);

    	Button_nextImage.setOnMouseClicked(event -> {
    		if(Table_procedureImages.getSelectionModel().getSelectedItem() != null){
    			if(Table_procedureImages.getSelectionModel().getSelectedIndex() != Table_procedureImages.getItems().size() - 1)
    				Table_procedureImages.getSelectionModel().selectNext();
    			else
    				Table_procedureImages.getSelectionModel().selectFirst();
    			ModalityImage img = Table_procedureImages.getSelectionModel().getSelectedItem();
    			setPreviewImage(img);
    		}
    	});
    	Button_previousImage.setOnMouseClicked(event -> {
    		if(Table_procedureImages.getSelectionModel().getSelectedItem() != null){
    			if(Table_procedureImages.getSelectionModel().getSelectedIndex() != 0)
    				Table_procedureImages.getSelectionModel().selectPrevious();
    			else
    				Table_procedureImages.getSelectionModel().selectLast();
    			ModalityImage img = Table_procedureImages.getSelectionModel().getSelectedItem();
    			setPreviewImage(img);
    		}
    	});
    }

	@FXML
    void FinalizeProcedure(ActionEvent event)
	{
		//System.out.println("FinalizeProcedure() Called");
    	Connection connection = null;
    	try
    	{
    		String currentProcedureID = Context.getInstance().getCurrentProcedureID();
    		connection = DatabaseHandler.getConnection();

        	String updateProcedureToProcedureCompleteQuery = "UPDATE procedurelist SET procedurestatus_procedureStatusID = 3 WHERE procedureId=" + currentProcedureID;

        	PreparedStatement preparedStatement = connection.prepareStatement(updateProcedureToProcedureCompleteQuery);
        	preparedStatement.execute();

        	Context.getInstance().setCurrentProcedureID(null);

        	Stage stage = (Stage) Button_finalizeProcedure.getScene().getWindow();
        	stage.close();
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
    @FXML
    void SaveImage(ActionEvent event)
    {
    	//System.out.println("SaveImage() Called");
    	Connection connection = null;
    	try
    	{
    		String selectedProcedureID = Context.getInstance().getCurrentProcedureID();
        	//System.out.println(selectedProcedureID);
    		connection = DatabaseHandler.getConnection();
    		String fileName ="\""+ selectedFile.getName()+ "\"";
        	String filePath = selectedFile.getPath();
        	filePath = filePath.replace("\\", "/");
        	String imageNotes = TextArea_modalityImageNotes.getText().toString();

        	String saveImageQuery = "INSERT INTO modalityimage(modalityImageBlob, modalityImageName, procedure_procedureId, modalityImageNotes) VALUES ( ?, ?, ?, ?)";

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
        			preparedStatement.setString(4, imageNotes);
        			if (selectedProcedureID == null)
        			{
        				//System.out.println("Selected ProcedureID is null");
        			}
        			else
        			{
        				//System.out.println(preparedStatement.toString());
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
    	finally
    	{
    		try
    		{
    	    	Button_finalizeProcedure.setDisable(false);
				connection.close();
			}
    		catch (SQLException e)
    		{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
	    	Button_saveImage.setDisable(false);
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    @FXML
    void getCurrentProcedureImages(ActionEvent event)
    {
    	//System.out.println("getCurrentProcedureImages() Called");
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

    		Button_saveImage.setDisable(true);
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