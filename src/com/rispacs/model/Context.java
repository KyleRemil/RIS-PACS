package com.rispacs.model;

//Used to store global variables and data you want to share between views, like user role
//Use like: Context.getInstance().[method](params);
public class Context {

	private final static Context instance = new Context();
	private int x = 0;

	private int role = 1;
	/*
	0	Admin
	1	Receptionist
	2	Modality Technician
	3	Radiologist
	4	Physician
	*/

    public static Context getInstance() {
        return instance;
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
	 * @param set the role
	 */
	public void setRole(int role) {
		this.role = role;
	}

}
