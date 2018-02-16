package com.rispacs.controller;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import static javafx.application.Application.launch;

public class LoginController extends javafx.application.Application {

    public static void main(String[] args){
        launch(args);
    }

    public void start(Stage stage) throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("../View/LoginView.fxml"));

        Scene loginScreen = new Scene(root, 1358, 659);

        stage.setTitle("Login");
        stage.setScene(loginScreen);
        stage.show();
    }
}
