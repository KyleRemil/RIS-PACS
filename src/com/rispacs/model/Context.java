package com.rispacs.model;

//Used to store global variables and data you want to share between views, like user role
//Use like: Context.getInstance().[method](params);
public class Context {

	private final static Context instance = new Context();
	private int x = 0;
	private NewScheduler newScheduler = new NewScheduler();

	private boolean medicalFlag = false;

	public boolean getMedicalFlag() {
		return medicalFlag;
	}
	public void setMedicalFlag(boolean value) {
		this.medicalFlag = value;
	}

	private String selectedModalityTypeID = null;

	private int role = 1;
	/*
	0	Admin
	1	Receptionist
	2	Modality Technician
	3	Radiologist
	4	Physician
	*/
	private int staffId = 0;
	private String staffName = "", userName = "", currentProcedureID;

    public static Context getInstance() {
        return instance;
    }

    public void sortSchedule() {
    	newScheduler = new NewScheduler();
		newScheduler.bookAppointment();
	}

    public NewScheduler getScheduler() {
    	return newScheduler;
    }
    public String getSelectedModalityTypeID() {
		return selectedModalityTypeID;
	}
	public void setSelectedModalityTypeID(String selectedModalityTypeID) {
		this.selectedModalityTypeID = selectedModalityTypeID;
	}
	/**
	 * @return the x
	 */
	public int getX() {
		return x;
	}

	/**
	 * @param x the x to set
	 */
	public void setX(int x) {
		this.x = x;
	}

	/**
	 * @return the role
	 */
	public int getRole() {
		return role;
	}

	/**
	// * @param set the role
	 */
	public void setRole(int role) {
		this.role = role;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getCurrentProcedureID() {
		return currentProcedureID;
	}

	public void setCurrentProcedureID(String currentProcedureID) {
		this.currentProcedureID = currentProcedureID;
	}

}
