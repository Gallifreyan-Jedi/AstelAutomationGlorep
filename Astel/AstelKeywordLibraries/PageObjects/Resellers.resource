*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Reseller screen 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
# Reseller Main Page 
${Add_New_Reseller}                     xpath = //a[@id='newReseller']
${Edit_Existing_Reseller_Code}          xpath = //a[@id='GoToReseller']//span
${Search_Reseller}                      xpath = //label[contains(text(),'Search:')]//input
${View_Packages}                        xpath = //a[@id='ViewPackages']//span
${LoginAsReseller}                      xpath = //a[@id='Login']
${LoginAsResellerValue}                 dummy
${LoginAsResellerValidate}              xpath = //span[contains(text(),'You are currently logged in as reseller : ${LoginAsResellerValue}')]


# Popup Validation
${Reseller_PopUp_Packages}              xpath = //strong[contains(text(),'Assigned Packages')]
${Reseller_PopUp_Edit}                  xpath = //strong[contains(text(),'EditReseller')]
${Reseller_PopUp_Add}                   xpath = //strong[contains(text(),'Add Reseller')]

# Add/Edit Reseller Pop up 
${Reseller_Code}                        xpath = //input[@id='ResellerCode']
${Reseller_Username}                    xpath = //input[@id='Username']
${Reseller_Password}                    xpath = //input[@id='Password']

${Reseller_Title}                       xpath = //select[@id='Title']
${Reseller_Title_Value}                 dummy
${Reseller_Title_Chosen}                xpath = //option[contains(text(),'${Reseller_Title_Value}')]

${Reseller_FirstName}                   xpath = //input[@id='FirstName']
${Reseller_LastName}                    xpath = //input[@id='LastName']

${Reseller_Status_Value}                dummy
${Reseller_Status}                      xpath = //select[@id='Status']
${Reseller_Status_Chosen}               xpath = //option[contains(text(),'${Reseller_Status_Value}')]

${Reseller_Base_Currency}               xpath = //select[@id='BaseCurrency']
${Reseller_Base_Currency_Value}         dummy
${Reseller_Base_Currency_Chosen}        xpath = //option[contains(text(),'${Reseller_Base_Currency_Value}')]

${Reseller_Contact_Person}              xpath = //input[@id='ContactPerson']
${Reseller_Email}                       xpath = //input[@id='ContactEmail']
${Reseller_Mobile_Number}               xpath = //input[@id='MobileNumber']
${Reseller_Landline_Number}             xpath = //input[@id='LandlineNumber']
${Reseller_Storefront_Products}         xpath = //input[@id='ShowStorefrontProducts']
${Reseller_Physical_Address1}           xpath = //input[@id='PhysicalAddress1']
${Reseller_Physical_Address2}           xpath = //input[@id='PhysicalAddress2']

${Reseller_Service_Provider}            xpath = //select[@id='ServiceProviderId']
${Reseller_Service_Provider_Value}      dummy
${Reseller_Service_Provider_Chosen}     xpath = //option[contains(text(),'${Reseller_Service_Provider_Value}')]

${Reseller_Technologies}                xpath = //span[@class='select2-selection select2-selection--multiple']
${Reseller_Technologies_Value}          dummy
${Reseller_Technologies_Chosen}         xpath = //li[contains(text(),'${Reseller_Technologies_Value}')]

${Reseller_Submit_Form}                 xpath = //button[@class='btn btn-primary user']


*** Keywords ***
Input Reseller Code
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Code}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Username
    [Arguments]    ${Glorep_Username}
    Input text     ${Reseller_Username}     ${Glorep_Username}
    Capture Page Screenshot 

Input Reseller Password
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Password}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller First Name
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_FirstName}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Last Name 
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_LastName}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Contact Person
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Contact_Person}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Contact Email
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Email}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Mobile Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Reseller_Mobile_Number}
    Input text     ${Reseller_Mobile_Number}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Landline Number
    [Arguments]    ${Element_Value}
    Clear Element Text      ${Reseller_Landline_Number}
    Input text     ${Reseller_Landline_Number}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Physical Address 1
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Physical_Address1}     ${Element_Value}
    Capture Page Screenshot 

Input Reseller Physical Address 2
    [Arguments]    ${Element_Value}
    Input text     ${Reseller_Physical_Address2}     ${Element_Value}
    Capture Page Screenshot 

Select Reseller Technologies
    [Arguments]         ${Reseller_Technologies_Value}
    Click Element       ${Reseller_Technologies}
    Wait Until Element Is Visible   ${Reseller_Technologies_Chosen}
    Click Element       ${Reseller_Technologies_Chosen}
    Capture Page Screenshot 

Select Reseller Show Storefront Options 
    Click Element       ${Reseller_Storefront_Products}
    Capture Page Screenshot 

Select Reseller Status 
    [Arguments]         ${Reseller_Status_Value}
    Click Element       ${Reseller_Status}
    Click Element       ${Reseller_Status_Chosen}
    Capture Page Screenshot 

Select Reseller Base Currency
    [Arguments]         ${Reseller_Base_Currency_Value}
    Click Element       ${Reseller_Base_Currency}
    Click Element       ${Reseller_Base_Currency_Chosen}
    Capture Page Screenshot 

Select Reseller Title
    [Arguments]         ${Reseller_Title_Value}
    Click Element       ${Reseller_Title}
    # Wait Until Element Is Visible     ${Reseller_Title_Chosen}
    Click Element       ${Reseller_Title_Chosen}
    Capture Page Screenshot 

Select Reseller Service Provider
    [Arguments]         ${Reseller_Service_Provider_Value}
    Click Element       ${Reseller_Service_Provider}
    # Wait Until Element Is Visible     ${Resell
    Click Element       ${Reseller_Service_Provider_Chosen}
    Capture Page Screenshot 

Click Login As Reseller
    Click Element      ${LoginAsReseller}
    Capture Page Screenshot

Click on Add new Reseller
    Click Element    ${Add_New_Reseller}
    # Sleep  10s
    Wait Until Element Is Visible     ${Reseller_PopUp}
    Capture Page Screenshot 

Click Submit Reseller
    Click Element    ${Reseller_Submit_Form}
    Capture Page Screenshot 

Click on Edit Reseller
    Click Element    ${Edit_Existing_Reseller_Code}
    Capture Page Screenshot 

Click on View Reseller Packages
    Click Element     ${View_Packages}
    Capture Page Screenshot

Search for Reseller
    [Arguments]    ${Element_Value}
    Input text     ${Search_Reseller}     ${Element_Value}
    Capture Page Screenshot 

Validate Reseller Updated Landline Number
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${Reseller_Landline_Number}       ${VerifyValue}
    Capture Page Screenshot

Validate Reseller Updated Mobile Number
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${Reseller_Mobile_Number}       ${VerifyValue}
    Capture Page Screenshot

Validate Edit Reseller PopUp
    Element Should Be Visible       ${Reseller_PopUp_Edit}
    Capture Page Screenshot

Validate Add Reseller PopUp
    Element Should Be Visible       ${Reseller_PopUp_Add}
    Capture Page Screenshot

Validate Reseller View Packages PopUp
    Element Should Be Visible       ${Reseller_PopUp_Packages}
    Capture Page Screenshot

Validate Reseller Login
    [Arguments]     ${LoginAsResellerValue}
    Page should Contain Element     ${LoginAsResellerValidate}
    Capture Page Screenshot
















# Unused code attempts and ways to improve efficiency of test assets 
# ------------------------------------------------------------------
# Input Reseller ${Element_Value} at ${Element_Location}
#     [Arguments]    ${Element_Value}
#     Input text     ${Element_Location}     ${Element_Value}
#     Capture Page Screeshot 

# Click on ${Element_Location}
#     Click Element    ${Element_Location}
#     Sleep  10s
    