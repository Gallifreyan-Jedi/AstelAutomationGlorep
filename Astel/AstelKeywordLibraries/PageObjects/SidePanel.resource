*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Side Panel 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${CustomerMenuReseller}             xpath = //span[contains(text(),'Customers')]
${CustomerCreateMenuReseller}       xpath = //a[contains(text(),'Create Customer')]
${ViewCustomerMenuReseller}         xpath = //a[contains(text(),'View Customers')]

${Quote}                            xpath = //span[contains(text(),'Quotes')]
${CreateQuote}                      xpath = //a[contains(text(),'New Quote')]

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

Click View Customer Menu
    Click Element       ${ViewCustomerMenuReseller}  
    Capture Page Screenshot 

Click Quote Menu Item 
    Click Element       ${Quote}
    Capture Page Screenshot

Click Create Quote Menu Item 
    Click Element       ${CreateQuote}
    Capture Page Screenshot