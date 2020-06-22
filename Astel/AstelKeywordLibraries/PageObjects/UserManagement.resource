*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the User Management Page
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Add_New_User_User}                           xpath = //button[@id='AddUser']//span
${Edit_User_User}                              xpath = //a[@id='GoToUser']
${User_FirstName}                              xpath = //input[@id='FirstName']
${User_LastName}                               xpath = //input[@id='Surname']
${User_Mobile_Number}                          xpath = //input[@id='Phone']
${Admin_Job_Title}                             xpath = //input[@id='JobTitle']
${User_Username}                               xpath = //input[@id='UserName']
${User_Password}                               xpath = //input[@id='Password']
${User_Force_Change_Password}                  xpath = //input[@id='ForceChangePassword']
${User_Submit_Button}                          xpath = //button[contains(text(),'Submit')]

*** Keywords ***
Input User Username
    [Arguments]    ${Glorep_Username}
    Input text     ${User_Username}     ${Glorep_Username}
    Capture Page Screenshot

Input User Password
    [Arguments]    ${Element_Value}
    Input text     ${User_Password}     ${Element_Value}
    Capture Page Screenshot

Input User First Name
    [Arguments]    ${Element_Value}
    Clear Element Text      ${User_FirstName}
    Input text     ${User_FirstName}     ${Element_Value}
    Capture Page Screenshot

Input User Last Name
    [Arguments]    ${Element_Value}
    Clear Element Text      ${User_LastName}
    Input text     ${User_LastName}     ${Element_Value}
    Capture Page Screenshot

Input User Job Title
    [Arguments]    ${Element_Value}
    Input text     ${Admin_Job_Title}     ${Element_Value}
    Capture Page Screenshot

Input User Mobile Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${User_Mobile_Number}
    Input text     ${User_Mobile_Number}     ${Element_Value}
    Capture Page Screenshot

Click Force Change Password
    Click Element       ${User_Force_Change_Password}
    Capture Page Screenshot

Click User Submit Button
    Click Element       ${User_Submit_Button}
    Capture Page Screenshot

Click Add User Button
    Click Element       ${Add_New_User_User}
    Capture Page Screenshot

Click Edit User Button
    Click Element       ${Edit_User_User}
    Capture Page Screenshot

Validate User User Updated Mobile Number
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${User_Mobile_Number}       ${VerifyValue}
    Capture Page Screenshot