*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Currency Page
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Add_Currency}                     xpath = //button[@id='AddCurrency']
${Edit_Currency}                    xpath = //a[@id='GoToCurrency']
${Currency_Code}                    xpath = //input[@id='CurrencyCode']
${ISO_Code}                         xpath = //input[@id='ISOCode']
${Currency_Symbol}                  xpath = //input[@id='CurrencySymbol']
${Currency_Description}             xpath = //input[@id='CurrencyDescription']
${ISO_Format}                       xpath = //input[@id='IsISOFormat']
${Submit_Currency}                  xpath = //button[@class='btn btn-primary user']
${Currency_Status_Value}            dummy
${Currency_Status}                  xpath = //select[@id='Status']
${Currency_Status_Chosen}           xpath = //option[contains(text(),'${Currency_Status_Value}')]

${Add_VAT}                          xpath = //button[@id='AddVat']
${VAT_Status_Value}                 dummy
${VAT_Status}                       xpath = //select[@id='Status']
${VAT_Status_Chosen}                xpath = //option[contains(text(),'${VAT_Status_Value}')]
${VAT_Code}                         xpath = //input[@id='VatCode']
${VAT_Description}                  xpath = //input[@id='VatDescription']
${VAT_Value}                        xpath = //input[@id='VatValue']
${VAT_Start_Date}                   xpath = //input[@id='StartDate']
${VAT_End_Date}                     xpath = //input[@id='EndDate']
${Edit_VAT}                         xpath = //a[@id='GoToVat']

${ExRate_Edit_Rate}                 xpath = //tr[@class='odd']//a[@id='GoToExchangeRate']
${ExRate_Add_Rate}                  xpath = //button[@id='AddExchangeRate']
${ExRate_Start_Date}                xpath = //input[@id='StartDate']
${ExRate_End_Date}                  xpath = //input[@id='EndDate']
${ExRate_Status_Value}              dummy
${ExRate_Status}                    xpath = //select[@id='Status']
${ExRate_Status_Chosen}             xpath = //option[contains(text(),'${ExRate_Status_Value}')]
${ExRate_Base_Currency}             xpath = //span[@id='select2-BaseCurrency-container']
${ExRate_Currency_Input}            xpath = //html//body//span//span//span//input
${ExRate_To_Currency}               xpath = //span[@id='select2-ToCurrency-container']
${ExRate_Description}               xpath = //input[@id='ExchangeRateDescription']
${ExRate_To_Rate}                   xpath = //input[@id='ToRate']

${Groups_Search_Bar}                xpath = //input[@placeholder='Search']
${Groups_Add}                       xpath = //button[@id='AddGroup']
${Groups_Add_Name}                  xpath = //input[@id='GroupName']
${Groups_Name_Value}                xpath = dummy
${Groups_Name_Check}                xpath = //td[contains(text(),'${Groups_Name_Value}')]

${Groups_Action_Dropdown}           xpath = //a[@class='btn btn-outline-primary dropdown-toggle']

${Groups_Add_Subgroups}             xpath = //a[@class='dropdown-item groupSubgroups']
${Groups_Subgroups_Value}           dummy
${Groups_Subgroups}                 xpath = //select[@id='ddlSubgroupName']
${Groups_Subgroups_Chosen}          xpath = //option[contains(text(),'${Groups_Subgroups_Value}')]
${Groups_Subgroups_Selected}        xpath = //button[@id='AddGroupSubgroup']
${Groups_Subgroups_Check}           xpath = //td[contains(text(),'Groups_Subgroups_Value')]
${Groups_Subgroups_Search}          xpath = //div[@id='GroupSubgroupTable_filter']//input[@class='form-control form-control-sm']

${Groups_Add_Roles}                 xpath = //a[@class='dropdown-item groupRoles']
${Groups_Roles_Value}               dummy
${Groups_Roles}                     xpath = //select[@id='ddlRoleName']
${Groups_Roles_Chosen}              xpath = //option[contains(text(),'${Groups_Roles_Value}')]
${Groups_Roles_Selected}            xpath = //button[@id='AddGroupRole']
${Groups_Roles_Check}               xpath = //td[contains(text(),'${Groups_Roles_Value}')]
${Groups_Roles_Search}              xpath = //div[@id='GroupRoleTable_filter']//input

${Groups_Delete_Group}              xpath = //a[@class='dropdown-item deleteGroup']

*** Keywords ***
#---Currency Action keywords---
Click Add New Currency
    Click Element	       ${Add_Currency}          
    Capture Page Screenshot

Input Add Currency Code
    [Arguments]         ${Element_Value}
    Input Text	       ${Currency_Code}         ${Element_Value}
    Capture Page Screenshot

Input Add ISO Code
    [Arguments]         ${Element_Value}
    Input Text	       ${ISO_Code}          ${Element_Value}
    Capture Page Screenshot

Input Add Currency Symbol 
    [Arguments]         ${Element_Value}
    Input Text	       ${Currency_Symbol}       ${Element_Value}
    Capture Page Screenshot

Input Add Currency Description
    [Arguments]         ${Element_Value}
    Clear Element Text      ${Currency_Description}
    Input Text	       ${Currency_Description}      ${Element_Value}
    Capture Page Screenshot

Click Add ISO Format
    Click Element       ${ISO_Format}
    Capture Page Screenshot

Click Submit Currency
    Click Element       ${Submit_Currency}
    Capture Page Screenshot

Click Edit Currency
    Click Element       ${Edit_Currency}
    Capture Page Screenshot

Select Currency Status 
    [Arguments]         ${Currency_Status_Value}
    Click Element       ${Currency_Status}
    Click Element       ${Currency_Status_Chosen}
    Capture Page Screenshot 

Validate Currency Updated
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${Currency_Description}       ${VerifyValue}

#---VAT Action Keywords---
Click Add New VAT
    Click Element	       ${Add_VAT}          
    Capture Page Screenshot

Input Add VAT Code
    [Arguments]         ${Element_Value}
    Input Text	       ${VAT_Code}         ${Element_Value}
    Capture Page Screenshot

Input Add VAT Description
    [Arguments]         ${Element_Value}
    Clear Element Text      ${VAT_Description}
    Input Text	       ${VAT_Description}      ${Element_Value}
    Capture Page Screenshot

Input Add VAT Value
    [Arguments]         ${Element_Value}
    Clear Element Text      ${VAT_Value}
    Input Text	       ${VAT_Value}      ${Element_Value}
    Capture Page Screenshot

Input Add VAT Start Date 
    [Arguments]         ${Element_Value}
    Input Text	       ${VAT_Start_Date}         ${Element_Value}
    Capture Page Screenshot
    
Input Add VAT End Date
    [Arguments]         ${Element_Value}
    Input Text	       ${VAT_End_Date}         ${Element_Value}
    Capture Page Screenshot

Click Submit VAT
    Click Element       ${Submit_Currency}
    Capture Page Screenshot

Click Edit VAT
    Click Element       ${Edit_VAT}
    Capture Page Screenshot

Select VAT Status 
    [Arguments]         ${VAT_Status_Value}
    Click Element       ${VAT_Status}
    Click Element       ${VAT_Status_Chosen}
    Capture Page Screenshot 

Validate VAT Updated
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${VAT_Value}       ${VerifyValue}

#---Exchange Rate Action Keywords---
Input Add ExRate Description
    [Arguments]         ${Element_Value}
    Clear Element Text      ${ExRate_Description}
    Input Text	       ${ExRate_Description}      ${Element_Value}
    Capture Page Screenshot

Input Add ExRate To Rate
    [Arguments]         ${Element_Value}
    Clear Element Text      ${ExRate_To_Rate}
    Input Text	       ${ExRate_To_Rate}      ${Element_Value}
    Capture Page Screenshot

Input Add ExRate Start Date 
    [Arguments]         ${Element_Value}
    Input Text	       ${ExRate_Start_Date}         ${Element_Value}
    Capture Page Screenshot
    
Input Add ExRate End Date
    [Arguments]         ${Element_Value}
    Input Text	       ${ExRate_End_Date}         ${Element_Value}
    Capture Page Screenshot

Input Add ExRate Base Currency
    [Arguments]         ${Element_Value}
    Click Element       ${ExRate_Base_Currency}
    # Set Focus To Element     ${ExRate_Currency_Input}
    # Fix this focus error
    Input Text          ${ExRate_Currency_Input}        ${Element_Value}
    Capture Page Screenshot

Input Add ExRate To Currency
    [Arguments]         ${Element_Value}
    Click Element       ${ExRate_To_Currency}
    Input Text          ${ExRate_Currency_Input}        ${Element_Value}
    Capture Page Screenshot

Click Submit ExRate
    Click Element       ${Submit_Currency}
    Capture Page Screenshot

Click Add New ExRate
    Click Element       ${ExRate_Add_Rate}
    Capture Page Screenshot 

Click Edit ExRate
    Click Element       ${ExRate_Edit_Rate}
    Capture Page Screenshot

Select ExRate Status 
    [Arguments]         ${ExRate_Status_Value}
    Click Element       ${ExRate_Status}
    Click Element       ${ExRate_Status_Chosen}
    Capture Page Screenshot 

Validate ExRate Updated
    [Arguments]     ${VerifyValue}
    Textfield Value Should Be     ${ExRate_To_Rate}       ${VerifyValue}

#---Groups Action Keywords---
Click Add New Group
    Click Element	       ${Groups_Add}          
    Capture Page Screenshot

Input Add Group Name
    [Arguments]         ${Element_Value}
    Input Text	       ${Groups_Add_Name}         ${Element_Value}
    Capture Page Screenshot

Click Submit Groups
    Click Element       ${Submit_Currency}
    Capture Page Screenshot

Validate Group Created
    [Arguments]     ${Groups_Name_Value}
    Page should Contain Element    ${Groups_Name_Check}

Click Groups Action Dropdown
    Click Element       ${Groups_Action_Dropdown}
    Capture Page Screenshot

Click Group Subgroups
    Click Element       ${Groups_Add_Subgroups}
    Capture Page Screenshot

Select Subgroups
    [Arguments]         ${Groups_Subgroups_Value}
    Click Element       ${Groups_Subgroups}
    Scroll Element Into View        ${Groups_Subgroups_Chosen}
    Click Element       ${Groups_Subgroups_Chosen}
    Capture Page Screenshot 

Click Add Selected Subgroup
    Click Element       ${Groups_Subgroups_Selected}
    Capture Page Screenshot

Validate Subgroup Added
    [Arguments]     ${Groups_Subgroups_Value}
    Input Text      ${Groups_Subgroups_Search}      ${Groups_Subgroups_Value}
    Page should Contain Element    ${Groups_Subgroups_Chosen}
    Capture Page Screenshot

Click Group Roles
    Click Element       ${Groups_Add_Roles}
    Capture Page Screenshot

Select Roles
    [Arguments]         ${Groups_Roles_Value}
    Click Element       ${Groups_Roles}
    # Scroll Element Into View        ${Groups_Roles_Chosen}
    Click Element       ${Groups_Roles_Chosen}
    Capture Page Screenshot 

Click Add Selected Role
    Click Element       ${Groups_Roles_Selected}
    Capture Page Screenshot

Validate Role Added
    [Arguments]     ${Groups_Roles_Value}
    Input Text      ${Groups_Roles_Search}      ${Groups_Roles_Value}
    Page should Contain Element    ${Groups_Roles_Check}
    Capture Page Screenshot

Click Delete Group
    Click Element       ${Groups_Delete_Group}
    Capture Page Screenshot