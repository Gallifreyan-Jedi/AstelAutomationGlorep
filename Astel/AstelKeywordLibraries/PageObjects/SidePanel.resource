*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Side Panel 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Admin_Side_Panel}                             xpath = //span[contains(text(),'Administration')]
${Admin_Service_User_Management}                xpath = //a[contains(text(),'Service Provider User Management')]

${Service_User_Management_Page}                 xpath = //strong[contains(text(),'Service Provider User Management')]

${Add_New_Admin_User}                           xpath = //a[@id='newSpAdmin']//span


*** Keywords ***
# Input GloRep Login Email Address
#     [Arguments] 	${Email_Value}
# 	Input Text	   ${Email}		${Email_Value}
# 	Capture Page Screenshot   
