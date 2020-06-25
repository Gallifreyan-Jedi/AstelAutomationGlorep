*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Login screen 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
${CustomerType}			    	xpath = //select[@id='ddlCustomerType']
${CustomerTitle} 		    	xpath = //select[@id='Title']
${Domain}						xpath = //input[@id='CSPDomain']
${CustomerId}		    		xpath = //input[@id='IDNumber']
${CustomerStatus}				xpath = //select[@id='Status']
${CustomerScreenNext}           xpath = //a[contains(text(),'Next')]
${CustomerEmail} 		        xpath = //input[@id='Email']
${CustomerMobileNumber}         xpath = //input[@id='MobileNumber']
${CustomerLandlineNumber}		xpath = //input[@id='LandLineNumber']
${CustomerAddressLine1}         xpath = //input[@id='BillingAddress1']
${CustomerAddressLine2}         xpath = //input[@id='BillingAddress2']
${CustomerAddressLine3}         xpath = //div[@id='BillingAddress']//div[3]//div[1]//input[1]
${CustomerAddressLine4}         xpath = //div[@id='BillingAddress']//div[4]//div[1]//input[1]
${CustomerAddressPostalCode}    xpath = //input[@id='BillingPostalCode']
${CustomerPrefferedCurrency}    xpath = //select[@id='PreferredCurrency']
${CustomerRegion}               xpath = //select[@id='ddlRegion']
${CustomerPrefferedLang}        xpath = //select[@id='ddlPreferredLanguage']
${CustomerPaymentType}          xpath = //select[@id='ddlPaymentType']
${CustomerVat}                  xpath = //select[@id='VatId']
${CustomerDeliveryMethod}       xpath = //select[@id='ddlDeliveryMethod']
${CustomerClassification}       xpath = //select[@id='ddlClassification']
${CustomerJobTitle}             xpath = //input[@id='JobTitle']
${CustomerFunctionalArea}       xpath = //input[@id='FunctionalArea']
${CustomerFirstName}            xpath = //input[@id='FirstName']
${CustomerLastName}             xpath = //input[@id='Surname']
${CustomerBirthday}             xpath = //input[@id='Birthday']
${CustomerRemarks}				xpath = //textarea[@id='Remarks']
${CustomerContactMobile}        xpath = //input[@id='ContactMobileNumber']   
${CustomerContactOffice}        xpath = //input[@id='ContactOfficeNumber']
${CustomerContactEmail}         xpath = //input[@id='ContactEmail']
${CustomerComments}             xpath = //textarea[@id='Comments']
${CustomerSubmitButton}         xpath = //a[contains(text(),'Submit')]
${CustomerValidationValue}      dummy
${CustomerValidation}           xpath = //label[contains(text(),'${CustomerValidationValue}')]
${CustomerSearch}               xpath = //input[@placeholder='Search']
${CustomerEdit}                 xpath = //span[@class='fa fa-pencil-alt']
${CustomerOption}				dummy
${CustomerDropdown}				xpath = //option[contains(text(),'${CustomerOption}')]

#Quote Override
${CustomerRegionQ}               xpath = //select[@id='Region']
${CustomerPrefferedLangQ}        xpath = //select[@id='PreferredLanguage']
${CustomerPaymentTypeQ}          xpath = //select[@id='PaymentType']
${CustomerDeliveryMethodQ}       xpath = //select[@id='DeliveryMethod']
${CustomerClassificationQ}       xpath = //select[@id='Classification']
${CustomerRemarksQ}				xpath = //textarea[@id='taRemarks']


*** Keywords ***
Select Customer Type
    [Arguments]         ${CustomerOption}
    Click Element       ${CustomerType}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Title
    [Arguments]         ${CustomerOption}
    Click Element       ${CustomerTitle}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Input Customer IDNumber
	[Arguments]         ${IDNumValue}
	Input Text		${CustomerId}	${IDNumValue}
	Capture Page Screenshot 

Input Customer Domain
	[Arguments]         ${DomainValue}
	Input Text		${Domain}	${DomainValue}
	Capture Page Screenshot 

Select Customer Status
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerStatus}
    Click Element       ${CustomerStatus}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Input Customer Email
	[Arguments]     ${CustEmailValue}
	Scroll Element Into View 	${CustomerEmail}
	Input Text		${CustomerEmail}	${CustEmailValue}
	Capture Page Screenshot 

Input Customer Mobile Number
	[Arguments]     ${CustMobileValue}
	Scroll Element Into View 	${CustomerMobileNumber}
	Input Text		${CustomerMobileNumber}		${CustMobileValue}
	Capture Page Screenshot 

Input Customer Landline Number
	[Arguments]     ${CustLandlineValue}
	Scroll Element Into View 	${CustomerLandlineNumber}
	Input Text		${CustomerLandlineNumber}	${CustLandlineValue}
	Capture Page Screenshot 

Click Next Button 
	Scroll Element Into View 	${CustomerScreenNext}	
	Click Element   ${CustomerScreenNext}	
	Capture Page Screenshot

Input Customer Address Line1
	[Arguments]     ${CustAddressLine1Value}
	Scroll Element Into View 	${CustomerAddressLine1}	
	Input Text		${CustomerAddressLine1}		${CustAddressLine1Value}
	Capture Page Screenshot 
	 
Input Customer Address Line2
	[Arguments]     ${CustAddressLine2Value}
	Scroll Element Into View 	${CustomerAddressLine2}	
	Input Text		${CustomerAddressLine2}		${CustAddressLine2Value}
	Capture Page Screenshot 

Input Customer Address Line3
	[Arguments]     ${CustAddressLine3Value}
	Scroll Element Into View 	${CustomerAddressLine3}	
	Input Text		${CustomerAddressLine3}		${CustAddressLine3Value}
	Capture Page Screenshot 

Input Customer Address Line4
	[Arguments]     ${CustAddressLine4Value}
	Scroll Element Into View 	${CustomerAddressLine4}	
	Input Text		${CustomerAddressLine4}		${CustAddressLine4Value}
	Capture Page Screenshot 

Input Customer Address Postal Code
	[Arguments]     ${CustPostalCodeValue}
	Scroll Element Into View 	${CustomerAddressPostalCode}	
	Input Text		${CustomerAddressPostalCode}	${CustPostalCodeValue}
	Capture Page Screenshot 

Select Customer Currency
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerPrefferedCurrency}	
    Click Element       ${CustomerPrefferedCurrency}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Region
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerRegion}
    Click Element       ${CustomerRegion}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Preffered Language
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerPrefferedLang}
    Click Element       ${CustomerPrefferedLang}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Payment Type
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerPaymentType}	
    Click Element       ${CustomerPaymentType}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Vat
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerVat}	
    Click Element       ${CustomerVat}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Delivery Method
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerDeliveryMethod}		
    Click Element       ${CustomerDeliveryMethod}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Customer Classification
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerClassification}		
    Click Element       ${CustomerClassification}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Input Customer Remarks
	[Arguments]     ${CustomerRemarksValue}
	Scroll Element Into View 	${CustomerRemarks}			
	Input Text		${CustomerRemarks}	${CustomerRemarksValue}
	Capture Page Screenshot 

Input Customer Job Title
	[Arguments]     ${CustomerJobTitleValue}
	Scroll Element Into View 	${CustomerJobTitle}				
	Input Text		${CustomerJobTitle}		${CustomerJobTitleValue}
	Capture Page Screenshot 

Input Customer Job Functional Area
	[Arguments]     ${CustomerFunctionalAreaValue}
	Scroll Element Into View 	${CustomerFunctionalArea}		
	Input Text		${CustomerFunctionalArea}	 ${CustomerFunctionalAreaValue}
	Capture Page Screenshot 

Input Customer First Name
	[Arguments]     ${CustomerFirstNameValue}
	Scroll Element Into View 	${CustomerFirstName}		
	Input Text		${CustomerFirstName}	 ${CustomerFirstNameValue}
	Capture Page Screenshot 

Input Customer Last Name
	[Arguments]     ${CustomerLastNameValue}
	Scroll Element Into View 	${CustomerLastName}		
	Input Text		${CustomerLastName}	 ${CustomerLastNameValue}
	Capture Page Screenshot 

Input Customer Birthday
	[Arguments]     ${CustomerBirthdayValue}
	Scroll Element Into View 	${CustomerBirthday}			
	Input Text		${CustomerBirthday}	 ${CustomerBirthdayValue}
	Capture Page Screenshot 

Input Customer Contact Mobile
	[Arguments]     ${CustomerContactMobileValue}
	Scroll Element Into View 	${CustomerContactMobile}		
	Input Text		${CustomerContactMobile}	 ${CustomerContactMobileValue}
	Capture Page Screenshot 

Input Customer Contact Office Number
	[Arguments]     ${CustomerContactOfficeValue}
	Scroll Element Into View 	${CustomerContactOffice}		
	Input Text		${CustomerContactOffice}	 ${CustomerContactOfficeValue}
	Capture Page Screenshot 

Input Customer Contact Email
	[Arguments]     ${CustomerContactEmailValue}
	Scroll Element Into View 	${CustomerContactEmail}	
	Input Text		${CustomerContactEmail}	 ${CustomerContactEmailValue}
	Capture Page Screenshot 

Input Customer Comments
	[Arguments]     ${CustomerCommentsValue}
	Scroll Element Into View 	${CustomerComments}	
	Input Text		${CustomerComments}	 ${CustomerCommentsValue}
	Capture Page Screenshot 

Click Customer Submit Button 
	Scroll Element Into View 	${CustomerSubmitButton}	
	Click Element 	${CustomerSubmitButton}
	Capture Page Screenshot 

Input Customer Search 
	[Arguments]     ${CustomerSearchValue}
	Scroll Element Into View 	${CustomerSearch}		
	Input Text		${CustomerSearch}	 	${CustomerSearchValue}
	Capture Page Screenshot 

Validate Customer Creation 
	[Arguments]         ${CustomerValidationValue}	
    Page Should Contain Element       ${CustomerValidation}
	Capture Page Screenshot 

Click Edit Customer 
	Scroll Element Into View 	${CustomerEdit}	
	Click Element 	${CustomerEdit}
	Capture Page Screenshot 

Validate Landline Number 
	[Arguments]         ${LandlineValue}
	Textfield Value Should Be 	${CustomerLandlineNumber}	${LandlineValue}	
	Capture Page Screenshot

Select Quote Customer Region
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerRegionQ}
    Click Element       ${CustomerRegionQ}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Quote Customer Preffered Language
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerPrefferedLangQ}
    Click Element       ${CustomerPrefferedLangQ}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Quote Customer Payment Type
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerPaymentTypeQ}	
    Click Element       ${CustomerPaymentTypeQ}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Quote Customer Delivery Method
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerDeliveryMethodQ}		
    Click Element       ${CustomerDeliveryMethodQ}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Select Quote Customer Classification
    [Arguments]         ${CustomerOption}
	Scroll Element Into View 	${CustomerClassificationQ}		
    Click Element       ${CustomerClassificationQ}
    Click Element       ${CustomerDropdown}
    Capture Page Screenshot 

Input Quote Customer Remarks
	[Arguments]     ${CustomerRemarksValue}
	Scroll Element Into View 	${CustomerRemarksQ}			
	Input Text		${CustomerRemarksQ}	${CustomerRemarksValue}
	Capture Page Screenshot 