
Kyle Remillard
Robert Cromer
Daniel Schrader
Nick Grimaldi

Dr Abi Salimi
Advanced Software Engineering, CSCI 4400 2pm MWF
04/24/2018

RIS-PACS

    How to run the program.

        1. Start XAMPP apache then SQL servers. (If you dont have XAMPP you can use any alternative you would like, but
        you might require some additional setup for the JDBC to work.)
        2. Open the PHP my Admin by clicking the admin button
        3. Create a new Database with the name "risdatabase".
        4. Import the most recent Dump from the Database Builds package. At the time of this README's creation that is
        "Database Dump 2018_04_24_V2.sql".
        5. (Back to java) Edit the DatabaseHandler to match your localhost login configuration.
        6. Run the main file.

    How to operate the program.

        1. Login with the username "admin" and the password "admin". This will let you see every thing from a
        development view with out logging in and out as different users.
        2. Start in the Registration tab. The work flows through the tabs to complete the different tasks in order from
        left to right.
        3. In the Registration tab, enter the following information to create a patient: patient's name, middle initial,
        last name, date of birth, gender, 9 digit social security number, height in inches, weight in customary pounds.
        4. Confirm that all fields are filled in with the appropriate information and press the Register Patient button
        at the bottom of the windoe.
        5. You can then search for the patient you created with the box to the right titled Patient Search. Enter either
        their first, last, or first and last name and then hit the search button located directly under the fields.
        6. Navigate to the Physician tab and select your patient from the list on the left. If the list has not
        populated any patients click the refresh button at the bottom.
        7. In the window to the right use the drop down tabs to select the desired procedure details and leave a short
        description. Then hit the Book Appointment button at the bottom and then the refresh button next to it.
        8. Proceed to the Technician tab. Select your procedure from the list to the left and click Begin Procedure. If
        you do not see your patient hit the refresh button.
        9. A Procedure window should pop up. Click the Take Image button and select a jpg img (not too large). Then
        click the Save Image button and leave a note before you finalize the procedure with the Finalize button to the
        bottum right.
        10. Proceed to the Radiologist tab and refresh the list to the left. Select your patient and write your report
        then hit the Submit Report button.
        11. Go to the Invoice tab and select your patient from the list, refresh as needed. Select the invoice from the
        list to the right. Then hit the Pay Bill button to clear the tab.