*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Quote screen 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${QuoteSolutionSearch}			    xpath = //input[@id='searchInput']
${QuoteSolutionSearchButton}        xpath = //button[@id='btnSearch']
${AddToCart}		    		    xpath = //*[@id="PackageTable"]/tbody/tr/td[5]/div/span[2]/a/span
${MyCart}						    xpath = //div[@id='cart-items']//span//i

${Checkout} 		                xpath = //*[@id="mCSB_2_container"]/div/div[6]/div/a[1]
${NewCustomer}                      xpath = //*[@id="mCSB_2_container"]/div/div[2]/div[2]/label[2]
${ExistingCustomer}                 xpath = //div[@class='btn-group btn-group-toggle']//label[1]
${CustomerSearchDropDown}			xpath = //span[@id='select2-ddlCustomer-container']
${CustomerSearchDropValue}			dummy
${CustomerSearchElement}			xpath = //option[contains(text(),'${CustomerSearchDropValue}')]

${ServiceAgreementLink}				xpath = //a[contains(text(),'here')]
${ServiceAgreementFirstName}		xpath = //input[@id='FirstName']
${ServiceAgreementLastName}			xpath = //input[@id='LastName']
${ServiceAgreementEmail}			xpath = //input[@id='EmailAddress']
${ServiceAgreementDate}				xpath = //input[@id='AgreementDate']
${ServiceAgreementSubmit}			xpath = //button[@id='Create']

${Details}							xpath = //a[contains(text(),'Details')]
${BillCycleQ}						xpath = //select[@id='BillCycleId']	
${BillCycleValueQ}					dummy
${BillCycleElementQ}				xpath = //option[contains(text(),'${BillCycleValueQ}')]
${ContractStartDate}				xpath = //input[@id='ContractStart']
${ContractEndDate}					xpath = //input[@id='ContractEnd']
${TechnologyFriendlyName}			xpath = //input[@id='FriendlyName']
${ResourceGroup}					xpath = //input[@id='ResourceGroup']
${SaveQuoteDetails}					xpath = //button[@class='btn btn-primary user']
${ProcessOrder}						xpath = //button[@id='ConfirmOrderBtn']
${CompleteOrderDialogBox}			xpath = //div[@id='Complete-order-modal']//div[@class='modal-dialog modal-dialog-centered']

*** Keywords ***
Input Quote Search Value
    [Arguments] 	${QuoteSolutionSearchValue}
	Input Text	   ${QuoteSolutionSearch}		${QuoteSolutionSearchValue}
	Capture Page Screenshot   

Click Quote Search Button 
	Click Element    ${QuoteSolutionSearchButton}	
	Capture Page Screenshot   

Click Add To Cart Button 
	Click Element    ${AddToCart}	
	Capture Page Screenshot    

Click My Cart Button 
	Click Element    ${MyCart}	
	Capture Page Screenshot    

Click Checkout Button 
	Scroll Element Into View 	${Checkout}
	Click Element    ${Checkout}	
	Capture Page Screenshot    

Click New Customer Button 
	Click Element    ${NewCustomer}	
	Capture Page Screenshot    

Click Existing Customer Button 
	Click Element    ${ExistingCustomer}	
	Capture Page Screenshot  

#Service Agreement
Click Service Agreement Link
	Scroll Element Into View 	${ServiceAgreementLink}
	Click Element 	${ServiceAgreementLink}
	Capture Page Screenshot

Input Service Agreement First Name
    [Arguments] 	${ServiceAgreementFirstNameValue}
	Scroll Element Into View 	${ServiceAgreementFirstName}
	Input Text	   ${ServiceAgreementFirstName}		${ServiceAgreementFirstNameValue}
	Capture Page Screenshot   

Input Service Agreement Last Name
    [Arguments] 	${ServiceAgreementLastNameValue}
	Scroll Element Into View 	${ServiceAgreementLastName}
	Input Text	   ${ServiceAgreementLastName}		${ServiceAgreementLastNameValue}
	Capture Page Screenshot   

Input Service Agreement Email
    [Arguments] 	${ServiceAgreementEmailValue}
	Scroll Element Into View 	${ServiceAgreementEmail}
	Input Text	   ${ServiceAgreementEmail}		${ServiceAgreementEmailValue}
	Capture Page Screenshot   

Input Service Agreement Date
    [Arguments] 	${ServiceAgreementDateValue}
	Scroll Element Into View 	${ServiceAgreementDate}
	Input Text	   ${ServiceAgreementDate}		${ServiceAgreementDateValue}
	Capture Page Screenshot   

Click Service Agreement Submit  
	Scroll Element Into View 	${ServiceAgreementSubmit}
	Click Element    ${ServiceAgreementSubmit}	
	Capture Page Screenshot    

#Details
Click Details Button 
	Click Element 	${Details}
	Capture Page Screenshot

Select Quote Bill Cycle
	[Arguments] 	${BillCycleValueQ}
    Click Element       ${BillCycleQ}
    Click Element       ${BillCycleElementQ}
    Capture Page Screenshot 

Input Contract Start Date
    [Arguments] 	${ContractStartDateValue}
	Scroll Element Into View 	${ContractStartDate}
	Input Text	   ${ContractStartDate}		${ContractStartDateValue}
	Capture Page Screenshot   

Input Contract End Date
    [Arguments] 	${ContractEndDateValue}
	Scroll Element Into View 	${ContractEndDate}
	Input Text	   ${ContractEndDate}		${ContractEndDateValue}
	Capture Page Screenshot   

Input Technology Friendly Name
    [Arguments] 	${TechnologyFriendlyNameValue}
	Scroll Element Into View 	${TechnologyFriendlyName}
	Input Text	   ${TechnologyFriendlyName}	${TechnologyFriendlyNameValue}
	Capture Page Screenshot   

Input Resource Group
    [Arguments] 	${ResourceGroupValue}
	Scroll Element Into View 	${ResourceGroup}
	Input Text	   ${ResourceGroup}	${ResourceGroupValue}
	Capture Page Screenshot   

Click Save Quote Details Button 
	Scroll Element Into View 	${SaveQuoteDetails}
	Click Element		${SaveQuoteDetails}
	Capture Page Screenshot

Click Process Order Button 
	Scroll Element Into View 	${ProcessOrder}
	Click Element		${ProcessOrder}
	Capture Page Screenshot

Validate Order Creation 
	Page Should Contain Element		${CompleteOrderDialogBox}
	Capture Page Screenshot

Select Existing Customer 
	[Arguments]		${CustomerSearchDropValue}
	Click Element 	${CustomerSearchDropDown}
	Click Element	${CustomerSearchElement}
	Capture Page Screenshot
	
Validate Agreement Link Exists
	Page Should Contain Element 	${ServiceAgreementLink}
	Capture Page Screenshot