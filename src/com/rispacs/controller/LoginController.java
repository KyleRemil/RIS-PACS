package com.rispacs.controller;

import com.rispacs.model.Context;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.Label;

public class LoginController {

	@FXML private TextField textField_username, textField_password;
	@FXML private Label label_badUsername, label_badPassword;
    @FXML private Button button_login;


    @FXML
    public void initialize() {

    }

    @FXML
    void login(ActionEvent event) {

    }

    void setRole(int role) {
    	Context.getInstance().setRole(role);
    }
}
