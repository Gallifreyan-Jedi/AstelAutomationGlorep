*** Settings ***
Documentation  Contains all the keywords for the actions that can be performed on the Reseller screen 
...            Builtin Version 1.0.0

Library  Selenium2Library

*** Variable ***
# Reseller Main Page 
${Add_New_Reseller}                 xpath = //a[@id='newReseller']
${Edit_Existing_Reseller}           xpath = //tr[1]//td[7]//a[1]
${Search_Reseller}                  xpath = //input[@class='form-control form-control-sm']

# Add Reseller Pop up
${Reseller_PopUp}                   xpath = //strong[contains(text(),'Add Reseller')]
${Reseller_Code}                    xpath = //input[@id='ResellerCode']
${Reseller_Username}                xpath = //input[@id='Username']
${Reseller_Password}                xpath = //input[@id='Password']
${Reseller_Title}                   xpath = //select[@id='Title']
${Reseller_FirstName}               xpath = //input[@id='FirstName']
${Reseller_LastName}                xpath = //input[@id='LastName']
${Reseller_Status_Inactive}         xpath = //option[contains(text(),'Inactive')]
${Reseller_Status_Active}           xpath = //option[contains(text(),'Active')]
${Reseller_Base_Currency}           xpath = //select[@id='BaseCurrency']
${Reseller_Contact_Person}          xpath = //input[@id='ContactPerson']
${Reseller_Email}                   xpath = //input[@id='ContactEmail']
${Reseller_Mobile_Number}           xpath = //input[@id='MobileNumber']
${Reseller_Landline_Number}         xpath = //input[@id='LandlineNumber']
${Reseller_Storefront_Products}     xpath = //input[@id='ShowStorefrontProducts']
${Reseller_Physical_Address1}       xpath = //input[@id='PhysicalAddress1']
${Reseller_Physical_Address2}       xpath = //input[@id='PhysicalAddress2']

${Reseller_Service_Provider_Chosen}         dummy
${Reseller_Service_Provider}        xpath = //option[contains(text(),'IoT - IoT')]


${Reseller_Technology_Chosen}       dummy
${Reseller_Technologies}            xpath = //li[contains(text(),'${${Reseller_Technology_Chosen}}')]

${Reseller_Submit_Form}             xpath = //button[@class='btn btn-primary user']


*** Keywords ***
Click on Add new Reseller


Input Reseller Code


Input Reseller Username


Input Reseller Password


Select Reseller Title


Input Reseller First Name


Input Reseller Last Name 


Select Reseller Status


Select Reseller Base Currency


Input Reseller Contact Person


Input Reseller Contact Email


Input Reseller Mobile Number


Input Reseller Landline Number


Input Reseller Technologies


Select Reseller Show Storefront Options 


Input Reseller Physical Address 1


Input Reseller Physical Address 2


Click Submit Reseller

###########################################################

Search for Reseller


Click on Edit Reseller


Input Reseller Updated Landline Number



Input Reseller Updated Mobile Number


Validate Reseller Updated Landline Number


Validate Reseller Updated Mobile Number


###########################################################
Click on View Packages