package com.rispacs.controller;

//Takes username and password, and compares them to the DB
//passwords are stored as 40-length strings after SHA1 hashing
//info on hashing in Java: https://stackoverflow.com/questions/4895523/java-string-to-sha1


import org.apache.commons.codec.digest.DigestUtils;

import com.rispacs.model.Context;

import application.DatabaseHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.fxml.FXMLLoader;
import java.io.IOException;



public class LoginController //extends Application
{

	@FXML public TextField textField_username;//, textField_password;
	@FXML private PasswordField textField_password;
	@FXML private Label label_badUsername, label_badPassword,  label_error;
    @FXML private Button button_login;


    @FXML
    public void initialize() {

    	textField_username.setOnKeyPressed(event -> {
    		   if(event.getCode() == KeyCode.ENTER){
    		     login();
    		   }
    		});
    	textField_password.setOnKeyPressed(event -> {
 		   if(event.getCode() == KeyCode.ENTER){
 		     login();
 		   }
 		});
    }

    @FXML
    void login() {

    	button_login.setDisable(true);
    	textField_username.setDisable(true);
    	textField_password.setDisable(true);
    	label_error.setVisible(true);

    	System.out.println("Tried to login.");
    	System.out.println("current username: " + textField_username.getText());

    	if(textField_username.getText().equals(""))
    	{
    		System.out.println("Username is empty.");
			label_badUsername.setVisible(true);
			label_badPassword.setVisible(false);

			button_login.setDisable(false);
        	textField_username.setDisable(false);
        	textField_password.setDisable(false);

			return;
    	}

    	String s = "select (select if(count(*), 'match', 'no') from staff where username like ?) as user, "+
    			"if(count(*), 'match', 'no') as pass, `staffID` as id, `staffName` as name, `StaffRole_staffRoleID` as r " +
    			"from staff where username like ? and `password` like ?";
    	// 1st two ?'s are the username (so have the same input), and 3rd is the hashed password (hash it first)
    	String user = textField_username.getText();
    	String pass = DigestUtils.sha1Hex(textField_password.getText());

        Connection conn = null;
    	PreparedStatement ps = null;
        ResultSet rs = null;

        boolean succeed = false;
    	try{
    		conn = DatabaseHandler.getConnection();
			ps = conn.prepareStatement(s);
			ps.setString(1, user);
			ps.setString(2, user);
			ps.setString(3, pass);

			rs = ps.executeQuery();
			//columns of result set are as follows:
			// user is string - tells if username exists in db
			// pass is string - tells if username and password combo exists in db
			// id is int - gives staffId
			// name is string - gives staffName
			// r is int - gives id of that user's role
			//** the last 3 will be null if login failed, and user & pass tell why it failed
			String u="", p="";
			while(rs.next())
			{
				//System.out.println(rs.getObject(1).getClass());
				u = rs.getString("user");
				if (u.equals("no"))
				{
					System.out.println("Username not found.");
					label_badUsername.setVisible(true);
					label_badPassword.setVisible(false);
					break;
				}
				else
				{
					p = rs.getString("pass");
					if (p.equals("no"))
					{
						System.out.println("Password incorrect.");
						label_badUsername.setVisible(false);
						label_badPassword.setVisible(true);
						break;
					}
					else
					{
						//set it in the context
						Context.getInstance().setRole(rs.getInt("r"));
						Context.getInstance().setStaffId(rs.getInt("id"));
						Context.getInstance().setStaffName(rs.getString("name"));
						Context.getInstance().setUserName(user);
						System.out.println("" + Context.getInstance().getRole());
						succeed = true;
					}
				}
			}
		}
    	catch (Exception e) {
			e.printStackTrace();
			label_error.setVisible(true);
		}
    	finally {
        	try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { ps.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
    	}

    	if(succeed)
    	{
    		changeView();
    	}
		button_login.setDisable(false);
    	textField_username.setDisable(false);
    	textField_password.setDisable(false);
    }

    private void changeView()
    {
    	System.out.println("Login succeeded!");
		try {
			AnchorPane root = FXMLLoader.load(getClass().getResource("../view/FrameView.fxml"));
			Stage stage = (Stage) button_login.getScene().getWindow();
			Scene scene = new Scene(root);
			stage.setScene(scene);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    // Old testing stuff Below
//    private void setRole(int role) {
//    	Context.getInstance().setRole(role);
//    }

    //for testing hashing before I found the Apache Commons Codec
//    //way2
//    private static String encryptPassword(String password)
//    {
//        String sha1 = "";
//        try
//        {
//            MessageDigest crypt = MessageDigest.getInstance("SHA-1");
//            crypt.reset();
//            crypt.update(password.getBytes("UTF-8"));
//            byte[] b = crypt.digest();
//            sha1 = byteToHex(b);//crypt.digest());
//            System.out.println("way 1: "+ byteToHex(b));
//            System.out.println("way 2: "+ byteArrayToHexString(b));
//            System.out.println("way 3: "+ getHex(b));
//            System.out.println("way 4: "+ getHexString(b));
//        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }
//        return sha1;
//    }
//
//    //way 1
//    private static String byteToHex(final byte[] hash)
//    {
//        Formatter formatter = new Formatter();
//        for (byte b : hash)
//        {
//            formatter.format("%02x", b);
//        }
//        String result = formatter.toString();
//        formatter.close();
//        return result;
//    }
//
//    //way 2
//    public static String byteArrayToHexString(byte[] b) {
//    	  String result = "";
//    	  for (int i=0; i < b.length; i++) {
//    	    result +=
//    	          Integer.toString( ( b[i] & 0xff ) + 0x100, 16).substring( 1 );
//    	  }
//    	  return result;
//	}
//
//    //way 3
//    static final String HEXES = "0123456789ABCDEF";
//    public static String getHex( byte [] raw ) {
//      if ( raw == null ) {
//        return null;
//      }
//      final StringBuilder hex = new StringBuilder( 2 * raw.length );
//      for ( final byte b : raw ) {
//        hex.append(HEXES.charAt((b & 0xF0) >> 4))
//           .append(HEXES.charAt((b & 0x0F)));
//      }
//      return hex.toString();
//    }
//
//    //way 4
//    static final byte[] HEX_CHAR_TABLE = {
//	    (byte)'0', (byte)'1', (byte)'2', (byte)'3',
//	    (byte)'4', (byte)'5', (byte)'6', (byte)'7',
//	    (byte)'8', (byte)'9', (byte)'a', (byte)'b',
//	    (byte)'c', (byte)'d', (byte)'e', (byte)'f'
//	};
//
//    public static String getHexString(byte[] raw) throws Exception
//	{
//    	byte[] hex = new byte[2 * raw.length];
//    	int index = 0;
//
//    	for (byte b : raw) {
//		  int v = b & 0xFF;
//		  hex[index++] = HEX_CHAR_TABLE[v >>> 4];
//	      hex[index++] = HEX_CHAR_TABLE[v & 0xF];
//    	}
//    	return new String(hex, "ASCII");
//	}
//

    //testing methods (like a main function)


	//stuff for testing login view, without messing with main.java
//    public static void main(String[] args){
//
//        try{
//	        //testing
//	        /*String pass = "Seven";
//	        String s1 = toSHA1( pass.getBytes("UTF-8") );
//	        String s2 = encryptPassword(pass);
//
//	        System.out.println("plaintext: "+pass + "\n" + "s1: " + s1+ "\ns2: "+s2);*/
//	        ArrayList<String> a = new ArrayList<String>();
//	        a.add("admin");
//	        a.add("Admin");
//	        a.add("RICHARD");
//	        a.add("JEFF");
//	        for(int i = 0; i < a.size(); i++)
//	        {
//	        	System.out.println( a.get(i) + " is:");
//	        	//encryptPassword(a.get(i));
//	        	//System.out.println("BigInt: " + encryptPassword2(a.get(i)));
//	        	System.out.println("apache 1: " + DigestUtils.sha1Hex(a.get(i).getBytes("UTF-8")));
//	        	System.out.println("apache 2: " + DigestUtils.sha1Hex(a.get(i)));
//	        	System.out.println();
//	        }
//        }
//        catch(Exception e){
//        	e.printStackTrace();
//        }
//      launch(args);
//    }
//
//    @Override
//	public void start(Stage primaryStage) {
//		try {
//			AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("../view/LoginView.fxml"));
//			Scene scene = new Scene(root);
//			//scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
//			primaryStage.setScene(scene);
//			primaryStage.show();
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
//    //end of testing stuff

}
