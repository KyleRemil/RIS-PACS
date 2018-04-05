package com.rispacs.controller;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import com.rispacs.model.ArrivedPatientsModel;
import com.rispacs.model.ModalityImage;
import com.rispacs.model.ProcedureListModel;

import application.DatabaseHandler;
import com.rispacs.model.ProcedureSchedule;
import com.rispacs.model.SchedulerTree;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.ImageView;
import javafx.util.StringConverter;

public class PhysicianController {

    @FXML private TableView<ProcedureListModel> Table_patientRadiologyHistory;
    @FXML private TextArea textarea_physicanNoteBox;
    @FXML private TableView<ArrivedPatientsModel> Table_avaliablePatients;
    @FXML private TableColumn<ArrivedPatientsModel, String> column_patientID;
    @FXML private TableColumn<ArrivedPatientsModel, String> column_patientName;
    @FXML private Button Button_refreshAvaliblePatientTable;
    @FXML private Button Button_deleteRequest;
    @FXML private Button Button_updateRequest;
    @FXML private Button Button_sendRequest;
    @FXML private Button Button_AddAppointment;
    @FXML private ComboBox<ModalityName> comboBox_modalityName;
    @FXML private ComboBox<ModalityProcedureType> comboBox_modalityProcedureType;
    @FXML private ComboBox<ModalityTechnician> comboBox_modalityTechnician;
    @FXML private TableColumn<ProcedureListModel, String> column_ModalityName;
    @FXML private TableColumn<ProcedureListModel, String> column_ProcedureType;
    @FXML private TableColumn<ProcedureListModel, String> column_ModalityTechnician;
    @FXML private TableColumn<ProcedureListModel, String> column_ProcedureDOR;
    @FXML private TableColumn<ProcedureListModel, String> column_ProcedureScheduledDate;
    @FXML private TableColumn<ProcedureListModel, String> column_ProcedureStatus;
    @FXML private TableColumn<ProcedureListModel, String> column_ProcedureId;
    @FXML private Button Button_refreshPatientHistory;

    private ObservableList<ArrivedPatientsModel> arrivedPatientArray;
    private ObservableList<ModalityTechnician> modalityTechnicianObservableList;
    private ObservableList<ModalityName> ModalityNameObservableList;
    private ObservableList<ModalityProcedureType> ModalityProcedureTypeObservableList;
    private ObservableList<ProcedureListModel> ModalityProcedureListObservableList;


    @FXML private TableView<?> Table_patientProcedures;
    @FXML private TableColumn<?, ?> Column_patientProcedures;

    @FXML private TableView<ModalityImage> Table_ProcedureImages;
    @FXML private TableColumn<ModalityImage, String> Column_ImageName;

    @FXML private ImageView ImageView_patientProcedureImage;
    @FXML private Button Button_nextImage;
    @FXML private Button Button_previousImage;
    @FXML private TextArea TextArea_report;

    private ObservableList<ModalityImage> procedureImagesList;

    private ArrayList procedureList = new ArrayList();
    private ArrayList procedureQueue = new ArrayList();

	private SchedulerTree newSchedulerTree = new SchedulerTree();


	private class ModalityTechnician
    {
        private final String staffID;
        private final String staffName;

        public ModalityTechnician(String staffID, String staffName)
        {
            this.staffID = staffID;
            this.staffName = staffName;
        }
        public String getstaffID()
        {
            return staffID;
        }
        public String getstaffName()
        {
            return staffName;
        }
    }
    private class ModalityName
    {
        private final String modalityID;
        private final String modalityName;

        public ModalityName(String modalityID, String modalityName)
        {
            this.modalityID = modalityID;
            this.modalityName =modalityName;
        }
        public String getmodalityID()
        {
            return modalityID;
        }
        public String getmodalityName()
        {
            return modalityName;
        }
    }
    private class ModalityProcedureType
    {
        private final String modalityProcedureTypeID;
        private final String modalityProcedureTypeDesc;

        public ModalityProcedureType(String modalityProcedureTypeID, String modalityProcedureTypeDesc)
        {
            this.modalityProcedureTypeID = modalityProcedureTypeID;
            this.modalityProcedureTypeDesc = modalityProcedureTypeDesc;
        }
        public String getmodalityProcedureTypeID()
        {
            return modalityProcedureTypeID;
        }
        public String getmodalityProcedureTypeDesc()
        {
            return modalityProcedureTypeDesc;
        }
    }

    public void initialize()
    {
    	System.out.println("initialize() Called");
    	populatecomboBox_modalityTechnician();
    	populatecomboBox_modalityName();

    	Table_avaliablePatients.setOnMouseClicked(event -> {
    		if(Table_avaliablePatients.getSelectionModel().getSelectedItem() != null)
    		{
    			String patientID = Table_avaliablePatients.getSelectionModel().getSelectedItem().getpatientID().toString();
    			populateTable_patientRadiologyHistory(patientID);
    		}
    	});
    }
    void populateTable_patientRadiologyHistory(String patientID)
    {
    	System.out.println("populateTable_patientRadiologyHistory("+ patientID +") Called");
    	Connection connection = null;
    	String getPatientProcedureHistory = "SELECT modalitytype.modalityTypeName,modalityproceduretype.modalityProcedureTypeDesc, staff.staffName, procedurelist.procedureDateOfRequest, procedurelist.procedureScheduledDate, procedurestatus.procedureStatusDesc, procedurelist.procedureId FROM procedurelist ProcedureList, patient Patient, staff Staff, modalitytype ModalityType, modalityproceduretype ModalityProcedureType, procedurestatus ProcedureStatus WHERE ModalityType.modalityTypeId = ModalityProcedureType.modalityType_modalityTypeId AND ModalityProcedureType.modalityProcedureTypeId = ProcedureList.modalityProcedureTypeId AND ProcedureStatus.procedureStatusID = ProcedureList.procedurestatus_procedureStatusID AND Staff.staffID = ProcedureList.staffID_technician AND ProcedureList.patient_patientID = Patient.patientID AND Patient.patientID =" + patientID;
    	ModalityProcedureListObservableList = FXCollections.observableArrayList();
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		System.out.println(getPatientProcedureHistory);
    		ResultSet resultSet = connection.createStatement().executeQuery(getPatientProcedureHistory);
    		while (resultSet.next())
    		{
    			String modalityName = resultSet.getString("modalitytype.modalityTypeName");
    			String procedureTypeDesc = resultSet.getString("modalityproceduretype.modalityProcedureTypeDesc");
    			String modalityTechnician = resultSet.getString("staff.staffName");
    			String dateOfRequest = resultSet.getString("procedurelist.procedureDateOfRequest");
    			String scheduledDate = resultSet.getString("procedurelist.procedureScheduledDate");
    			String procedureStatus = resultSet.getString("procedurestatus.procedureStatusDesc");
    			String procedureId = resultSet.getString("procedurelist.procedureId");
    			ProcedureListModel procedureListModel = new ProcedureListModel(
    					modalityName,
    					procedureTypeDesc,
    					modalityTechnician,
    					dateOfRequest,
    					scheduledDate,
    					procedureStatus,
						procedureId);
    			ModalityProcedureListObservableList.add(procedureListModel);
    		}
    		Table_patientRadiologyHistory.setItems(ModalityProcedureListObservableList);

			column_ProcedureId.setCellValueFactory(new PropertyValueFactory<>("procedureId"));
			column_ModalityName.setCellValueFactory(new PropertyValueFactory<>("modalityName"));
    		column_ProcedureType.setCellValueFactory(new PropertyValueFactory<>("procedureTypeDesc"));
    		column_ModalityTechnician.setCellValueFactory(new PropertyValueFactory<>("modalityTechnician"));
    		column_ProcedureDOR.setCellValueFactory(new PropertyValueFactory<>("dateOfRequest"));
    		column_ProcedureScheduledDate.setCellValueFactory(new PropertyValueFactory<>("scheduledDate"));
    		column_ProcedureStatus.setCellValueFactory(new PropertyValueFactory<>("procedureStatus"));

    		Table_patientRadiologyHistory.setItems(ModalityProcedureListObservableList);
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    		System.out.println("ERROR @ Control.removeUser.First Try");
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
    void populatecomboBox_modalityProcedureType(String modalityTypeId)
    {
    	System.out.println("populatecomboBox_modalityProcedureType("+ modalityTypeId +") Called");
    	Connection connection = null;
    	String getModalityProcedureTypes = "SELECT * FROM modalityproceduretype WHERE modalityType_modalityTypeId =" + modalityTypeId;
    	ModalityProcedureTypeObservableList = FXCollections.observableArrayList();
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		ResultSet resultSet = connection.createStatement().executeQuery(getModalityProcedureTypes);
    		while (resultSet.next())
    		{
    			ModalityProcedureType modalityProcedureType = new ModalityProcedureType(resultSet.getString("modalityProcedureTypeId"), resultSet.getString("modalityProcedureTypeDesc"));
    			ModalityProcedureTypeObservableList.add(modalityProcedureType);
    		}
    		comboBox_modalityProcedureType.setItems(ModalityProcedureTypeObservableList);
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    		System.out.println("ERROR @ Control.removeUser.First Try");
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
    	comboBox_modalityProcedureType.setConverter(new StringConverter<ModalityProcedureType>()
    	{
            @Override
            public String toString(ModalityProcedureType object)
            {
                return object.getmodalityProcedureTypeDesc();
            }
            @Override
            public ModalityProcedureType fromString(String string)
            {
                return null; // No conversion fromString needed.
            }
        });
    	comboBox_modalityProcedureType.valueProperty().addListener((ov, oldVal, newVal) ->
    	{
             System.out.println(newVal.getmodalityProcedureTypeDesc() + "'s Modality Procedure Type ID:" + newVal.getmodalityProcedureTypeID());
        });
    }
    void populatecomboBox_modalityName()
    {
    	System.out.println("populatecomboBox_modalityName() Called");
    	Connection connection = null;
    	String getModalityTypes = "SELECT * FROM modalitytype;";
    	ModalityNameObservableList = FXCollections.observableArrayList();
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		ResultSet resultSet = connection.createStatement().executeQuery(getModalityTypes);
    		while (resultSet.next())
    		{
    			ModalityName modalityName = new ModalityName(resultSet.getString("modalityTypeId"), resultSet.getString("modalityTypeName"));
    			ModalityNameObservableList.add(modalityName);
    		}
    		comboBox_modalityName.setItems(ModalityNameObservableList);
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    		System.out.println("ERROR @ Control.removeUser.First Try");
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
    	comboBox_modalityName.setConverter(new StringConverter<ModalityName>()
    	{
            @Override
            public String toString(ModalityName object)
            {
                return object.getmodalityName();
            }
            @Override
            public ModalityName fromString(String string)
            {
                return null; // No conversion fromString needed.
            }
        });
    	comboBox_modalityName.valueProperty().addListener((ov, oldVal, newVal) ->
    	{
             System.out.println(newVal.getmodalityName() + "'s Modality ID:" + newVal.getmodalityID());
             System.out.println("Call populatecomboBox_modalityProcedureType("+ newVal.getmodalityID()+")");
             try
             {
            	 if (newVal != null)
                 {
            		 comboBox_modalityProcedureType.getSelectionModel().clearSelection();
                     comboBox_modalityProcedureType.getItems().clear();
            		 populatecomboBox_modalityProcedureType(newVal.getmodalityID());
                 }
             }
             catch (Exception e)
             {
				e.printStackTrace();
             }
        });
    }
    void populatecomboBox_modalityTechnician(){
    	System.out.println("populatecomboBox_modalityTechnician() Called");
    	Connection connection = null;
    	String getModalityTechnicians = "SELECT * FROM staff WHERE StaffRole_staffRoleID = 2";
    	// Creates Observable Array
    	modalityTechnicianObservableList = FXCollections.observableArrayList();
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		ResultSet resultSet = connection.createStatement().executeQuery(getModalityTechnicians);
    		while (resultSet.next())
    		{
    			ModalityTechnician modalityTechnician = new ModalityTechnician(resultSet.getString("staffID"), resultSet.getString("staffName"));
    			modalityTechnicianObservableList.add(modalityTechnician);
    		}
    		comboBox_modalityTechnician.setItems(modalityTechnicianObservableList);
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    		System.out.println("ERROR @ Control.removeUser.First Try");
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
    	comboBox_modalityTechnician.setConverter(new StringConverter<ModalityTechnician>()
    	{
            @Override
            public String toString(ModalityTechnician object)
            {
                return object.getstaffName();
            }
            @Override
            public ModalityTechnician fromString(String string)
            {
                return null; // No conversion fromString needed.
            }
        });
    }
    @FXML
    void requestProcedure(ActionEvent event){
    	System.out.println("requestProcedure() Called");
    	Connection connection = null;
    	try
    	{
    		connection = DatabaseHandler.getConnection();
    		ArrivedPatientsModel arrivedPatientArray = Table_avaliablePatients.getSelectionModel().getSelectedItem();
    		ModalityTechnician modalityTechnician = comboBox_modalityTechnician.getSelectionModel().getSelectedItem();
    		ModalityProcedureType modalityProcedureType = comboBox_modalityProcedureType.getSelectionModel().getSelectedItem();

        	if(arrivedPatientArray != null)
        	{
        		String selectedPatientID = arrivedPatientArray.getpatientID();
        		String physicianNotes = " ";
        		try {
					physicianNotes = textarea_physicanNoteBox.getText().trim();
					if (!physicianNotes.equals("")) {

						physicianNotes = textarea_physicanNoteBox.getText();
					} else {
						physicianNotes = " ";
					}
				} catch (Exception e) {
        			e.printStackTrace();
				}


        		String procedureTypeId = modalityProcedureType.getmodalityProcedureTypeID();
        		String modalityTechnicianId = modalityTechnician.getstaffID();
        		//System.out.println(selectedPatientID);

        		String insertNewProcedure = "INSERT INTO procedurelist ("
        				+ "staffID_technician,"
        				+ "modalityProcedureTypeId,"
        				+ "patient_patientID,"
        				+ "physicianNotes)"
        				+ "VALUES (?,?,?,?)";

        		PreparedStatement preparedStatement = connection.prepareStatement(insertNewProcedure);
        		preparedStatement.setString(1, modalityTechnicianId);
        		preparedStatement.setString(2, procedureTypeId);
        		preparedStatement.setString(3, selectedPatientID);
        		preparedStatement.setString(4, physicianNotes );
        		System.out.println(preparedStatement);
        		preparedStatement.execute();
        	}
        	else
        	{
        		System.out.println("Please Select A Patient");
        	}
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }
    @FXML
    void refresh_Table_avaliablePatients(ActionEvent event)
    {
    	System.out.println("refresh_Table_avaliablePatients() Called");
    	Connection connection = null;
        try
    	{
        	arrivedPatientArray = FXCollections.observableArrayList();
    		connection = DatabaseHandler.getConnection();
    		String getAllPatientsQuery = "SELECT * FROM patient";

    		PreparedStatement preparedStatement = connection.prepareStatement(getAllPatientsQuery);
    		ResultSet resultSet = preparedStatement.executeQuery();

    		while (resultSet.next())
    		{
    			String patientName = resultSet.getString("patientFirstName");
				String patientID = resultSet.getString("patientID");

				arrivedPatientArray.add(new ArrivedPatientsModel (patientID, patientName));
    		}

    		column_patientID.setCellValueFactory(new PropertyValueFactory<>("patientID"));
    		column_patientName.setCellValueFactory(new PropertyValueFactory<>("patientName"));

    		Table_avaliablePatients.setItems(null);
    		Table_avaliablePatients.setItems(arrivedPatientArray);

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
    void refresh_Table_patientRadiologyHistory(ActionEvent Event)
    {
    	System.out.println("refresh_Table_patientRadiologyHistory() Called");
    	try
    	{
    	String patientID = Table_avaliablePatients.getSelectionModel().getSelectedItem().getpatientID().toString();
    	populateTable_patientRadiologyHistory(patientID);
    	}
    	catch(Exception exception)
    	{
    		exception.printStackTrace();
    	}
    }





}
