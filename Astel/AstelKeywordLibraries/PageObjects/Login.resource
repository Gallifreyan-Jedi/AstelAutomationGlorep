*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Login screen 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${Email}			    		xpath = //*[@id="Email"]
${Password} 		    		xpath = //*[@id="Password"]
${login_button}		    		xpath = //div[@id='mCSB_1_container']/div/form/div[3]/div/div/input
${header}						xpath = //div[@class='sidebar-menu']

${forgot_password_link} 		xpath = //a[@class='nobold']
${forgot_password_username}	    xpath = //input[@id='Username']
${forgot_password_back}			xpath = //a[@class='btn btn-default active-green']
${forgot_password_submit}       xpath = //button[@id='submit']

*** Keywords ***
Input GloRep Login Email Address
    [Arguments] 	${Email_Value}
	Input Text	   ${Email}		${Email_Value}
	Capture Page Screenshot   

Input GloRep Login Password
	[Arguments] 	${Password_Value}
	Input Text    ${Password}		${Password_Value}
	Capture Page Screenshot   

Click GloRep Login Button 
	Click Element    ${login_button}	
	Capture Page Screenshot   

Click GloRep Password
	Click Element	${forgot_password_link} 
	Capture Page Screenshot   

Enter GloRep Password Username
	[Arguments]    ${Email_Value} 
	Input Text	   ${forgot_password_username}		${Email_Value}
	Capture Page Screenshot   

Click Back Button 
	Click Button 	${forgot_password_back}
	Capture Page Screenshot   

Click Submit Button 
	Click Button ${forgot_password_submit} 
	Capture Page Screenshot   

Validate Unsuccesful Login
	[Arguments]    ${validation_text}
	Page should contain 	${validation_text} 
	Capture Page Screenshot   

Validate Succesful Login
	Page should contain Element		${header}
	Capture Page Screenshot  
	
