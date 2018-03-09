package com.rispacs.model;

//Used to store global variables and data you want to share between views, like user role
//Use like: Context.getInstance().[method](params);
public class Context {

	private final static Context instance = new Context();
	private int x = 0;

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

}
