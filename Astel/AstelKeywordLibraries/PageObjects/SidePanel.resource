*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Side Panel 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${CustomerMenuReseller}                         xpath = //span[contains(text(),'Customers')]
${CustomerCreateMenuReseller}                   xpath = //a[contains(text(),'Create Customer')]
${ViewCustomerMenuReseller}                     xpath = //a[contains(text(),'View Customers')]

${Admin_Side_Panel}                             xpath = //span[contains(text(),'Administration')]
${Admin_Service_User_Management}                xpath = //a[contains(text(),'Service Provider User Management')]

${Service_User_Management_Page}                 xpath = //strong[contains(text(),'Service Provider User Management')]

${Add_New_Admin_User}                           xpath = //a[@id='newSpAdmin']//span
${Admin_FirstName}                              xpath = //input[@id='FirstName']
${Admin_LastName}                               xpath = //input[@id='Surname']
${Admin_Mobile_Number}                          xpath = //input[@id='Phone']
${Admin_Username}                               xpath = //input[@id='UserName']
${Admin_Password}                               xpath = //input[@id='Password']
${Admin_Force_Change_Password}                  xpath = //input[@id='ForceChangePassword']
${Admin_Submit_Buttom}                          xpath = //button[contains(text(),'Submit')]

*** Keywords ***
# Input GloRep Login Email Address
#     [Arguments] 	${Email_Value}
# 	Input Text	   ${Email}		${Email_Value}
# 	Capture Page Screenshot   

Click Customer Menu Item
    Click Element       ${CustomerMenuReseller}
    Capture Page Screenshot

Click Create customer Menu Item
    Click Element       ${CustomerCreateMenuReseller}
    Capture Page Screenshot

Click Side Administration Menu Item
    Click Element       ${Admin_Side_Panel}
    Capture Page Screenshot

Click Create Service User Management Menu Item
    Click Element       ${Admin_Service_User_Management}
    Capture Page Screenshot

Click Create Service User Management Button
    Click Element       ${Add_New_Admin_User}
    Capture Page Screenshot

Click View Customer Menu
    Click Element       ${ViewCustomerMenuReseller}
    Capture Page Screenshot

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

Input Admin Mobile Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Admin_Mobile_Number}
    Input text     ${Admin_Mobile_Number}     ${Element_Value}
    Capture Page Screenshot