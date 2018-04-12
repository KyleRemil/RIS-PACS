package com.rispacs.controller;

import java.io.IOException;

import com.rispacs.model.Context;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.MenuItem;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class FrameController {

	@FXML private MenuItem menu_close;
    @FXML private MenuItem menu_about;
    @FXML private MenuItem menu_logout;
	@FXML private Tab tab_registration;
    @FXML private Tab tab_tech;
    @FXML private Tab tab_rad;
    @FXML private Tab tab_physician;
    @FXML private Tab tab_invoice;
    @FXML private TabPane tabPane;

    //int[][] role_array = new int[5][5];

    public void initialize()
    {
    	boolean[][] role_array = new boolean[][]{
		  { true, true, true, true, true }, //admin role
		  { true, false, false, false, true }, //receptionist
		  { false, true, false, false, false }, //modality tech
		  { false, false, true, false, false }, //radiologist
		  { false, false, false, true, false } //physician
		};

		int r = Context.getInstance().getRole();
		System.out.println(r);
		/*
		tab_registration.setDisable(!role_array[r][0]);
		tab_tech.setDisable(!role_array[r][1]);
		tab_rad.setDisable(!role_array[r][2]);
		tab_physician.setDisable(!role_array[r][3]);
		tab_invoice.setDisable(!role_array[r][4]);
		*/

		Tab[] tabs = new Tab[]{
				tab_registration,
				tab_tech,
				tab_rad,
				tab_physician,
				tab_invoice
		};
		for(int i = 0; i < tabs.length; i++ )
		{
			if(!role_array[r][i])
				tabPane.getTabs().remove(tabs[i]);
		}
		//tab_registration.h

		menu_logout.setOnAction(event -> {
			logOut();
 		});
		menu_close.setOnAction(event -> {
			System.exit(0);
		});

		
		//create initial schedule - should probably create it here
		//Context.getInstance().sortSchedule();
    }

    public void logOut()
    {
		System.out.println("Logging out.");
    	Context.getInstance().setRole(1);
		Context.getInstance().setStaffId(0);
		Context.getInstance().setStaffName("");
		Context.getInstance().setUserName("");
		try {
			AnchorPane root = FXMLLoader.load(getClass().getResource("../view/LoginView.fxml"));
			Stage stage = (Stage) tabPane.getScene().getWindow();
			Scene scene = new Scene(root);
			stage.setScene(scene);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
