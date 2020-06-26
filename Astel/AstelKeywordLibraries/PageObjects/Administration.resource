*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Side Panel 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Add_New_Admin_User}                           xpath = //a[@id='newSpAdmin']//span
${Edit_Admin_User}                              xpath = //div[@id='SPAdminTable_wrapper']//a[1]//span[1]
${Admin_FirstName}                              xpath = //input[@id='FirstName']
${Admin_LastName}                               xpath = //input[@id='Surname']
${Admin_Mobile_Number}                          xpath = //input[@id='Phone']
${Admin_Job_Title}                              xpath = //input[@id='JobTitle']
${Admin_Username}                               xpath = //input[@id='UserName']
${Admin_Password}                               xpath = //input[@id='Password']
${Admin_Force_Change_Password}                  xpath = //input[@id='ForceChangePassword']
${Admin_Submit_Button}                          xpath = //button[contains(text(),'Submit')]

*** Keywords ***
Input Admin Username
    [Arguments]    ${Glorep_Username}
    Input text     ${Admin_Username}     ${Glorep_Username}
    Capture Page Screenshot

Input Admin Password
    [Arguments]    ${Element_Value}
    Input text     ${Admin_Password}     ${Element_Value}
    Capture Page Screenshot

Input Admin First Name
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Admin_FirstName}
    Input text     ${Admin_FirstName}     ${Element_Value}
    Capture Page Screenshot

Input Admin Last Name
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Admin_LastName}
    Input text     ${Admin_LastName}     ${Element_Value}
    Capture Page Screenshot

Input Admin Job Title
    [Arguments]    ${Element_Value}
    Input text     ${Admin_Job_Title}     ${Element_Value}
    Capture Page Screenshot

Input Admin Mobile Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Admin_Mobile_Number}
    Input text     ${Admin_Mobile_Number}     ${Element_Value}
    Capture Page Screenshot

Click Admin Force Change Password
    Click Element       ${Admin_Force_Change_Password}
    Capture Page Screenshot

Click Admin Submit Button
    Click Element       ${Admin_Submit_Button}
    Capture Page Screenshot

Click Add Admin Button
    Click Element       ${Add_New_Admin_User}
    Capture Page Screenshot

Click Edit Admin Button
    Click Element       ${Edit_Admin_User}
    Capture Page Screenshot

Validate Admin User Updated Mobile Number
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${Admin_Mobile_Number}       ${VerifyValue}
    Capture Page Screenshot