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

*** Keywords ***
Click Add New Currency
    Click Element       ${Add_Currency}
    Capture Page Screenshot

Click Add Currency Code
    Click Element       ${Currency_Code}
    Capture Page Screenshot

Click Add ISO Code
    Click Element       ${ISO_Code}
    Capture Page Screenshot

Click Add Currency Symbol 
    Click Element       ${Currency_Symbol}
    Capture Page Screenshot

Click Add Currency Description
    Click Element       ${Currency_Description}
    Capture Page Screenshot

Click Add ISO Format
    Click Element       ${ISO_Format}
    Capture Page Screenshot

Select Currency Status 
    [Arguments]         ${Currency_Status_Value}
    Click Element       ${Currency_Status}
    Click Element       ${Currency_Status_Chosen}
    Capture Page Screenshot 