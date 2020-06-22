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

*** Keywords ***
# Input GloRep Login Email Address
#     [Arguments] 	${Email_Value}
# 	Input Text	   ${Email}		${Email_Value}
# 	Capture Page Screenshot   
Click View Customer Menu
    Click Element       ${ViewCustomerMenuReseller}
    Capture Page Screenshot

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

Validate Service User Management Page
	Page should contain Element		${Service_User_Management_Page}
	Capture Page Screenshot  