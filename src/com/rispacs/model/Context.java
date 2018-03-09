package com.rispacs.model;

//Used to store global variables and data you want to share between views, like user role
//Use like: Context.getInstance().[method](params);
public class Context {

	private final static Context instance = new Context();

    public static Context getInstance() {
        return instance;
    }

}
