*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the User Management Page
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Add_New_User_User}                            xpath = //button[@id='AddUser']//span
${Edit_User_User}                               xpath = //a[@id='GoToUser']

${User_Action_Dropdown}                         xpath = //tr[@class='odd']//a[@class='btn btn-outline-primary dropdown-toggle']
${Deactivate_User}                              xpath = //ul[@class='dropdown-menu dropdown-menu-right show']//a[@class='dropdown-item'][contains(text(),'Deactivate')]
${User_Deactivated_Status}                      xpath = //td[contains(text(),'False')]
${User_Groups}                                  xpath = //ul[@class='dropdown-menu dropdown-menu-right show']//a[@class='dropdown-item userGroups'][contains(text(),'User Groups')]
${User_Groups_Close_Dialog}                     xpath = //button[contains(text(),'×')]

${User_FirstName}                               xpath = //input[@id='FirstName']
${User_LastName}                                xpath = //input[@id='Surname']
${User_Mobile_Number}                           xpath = //input[@id='Phone']
${User_Job_Title}                               xpath = //input[@id='JobTitle']
${User_Username}                                xpath = //input[@id='UserName']
${User_Password}                                xpath = //input[@id='Password']
${User_Force_Change_Password}                   xpath = //input[@id='ForceChangePassword']
${User_Change_Password}                         xpath = //button[@id='ChangePassword']
${User_Submit_Button}                           xpath = //button[contains(text(),'Submit')]

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
    Input text     ${User_Job_Title}     ${Element_Value}
    Capture Page Screenshot

Input User Mobile Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${User_Mobile_Number}
    Input text     ${User_Mobile_Number}     ${Element_Value}
    Capture Page Screenshot

Click User Force Change Password
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

Click Change Password Button
    Click Element       ${User_Change_Password}
    Capture Page Screenshot

Click Close User Groups Dialog
    Click Element       ${User_Groups_Close_Dialog}
    Capture Page Screenshot

Validate User Updated Mobile Number
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${User_Mobile_Number}       ${VerifyValue}
    Capture Page Screenshot

Click User Action Dropdown
    Click Element       ${User_Action_Dropdown}
    Capture Page Screenshot 

Click Deactivate User   
    Click Element       ${Deactivate_User}
    Capture Page Screenshot

Validate User is Deacivated 
    Element Should Be Visible       ${User_Deactivated_Status}
    Capture Page Screenshot
