package com.rispacs.controller;

import com.rispacs.model.Context;

import javafx.fxml.FXML;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;

public class FrameController {

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
		tab_registration.setDisable(!role_array[r][0]);
		tab_tech.setDisable(!role_array[r][1]);
		tab_rad.setDisable(!role_array[r][2]);
		tab_physician.setDisable(!role_array[r][3]);
		tab_invoice.setDisable(!role_array[r][4]);
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

    }
}
