*** Settings ***
Documentation  Imports All the Data required to run the complete test suite
Library  OperatingSystem

*** Variables ***

*** Keywords ***
Import Test Data
    ${jsonfile} =  Get file  ${CURDIR}/../TestData/${SITENAME}.json
    ${Data} =  Evaluate  json.loads('''${jsonfile}''')  json
    Set Global Variable  ${Data}

#Login Data
Get GloRep Valid Login data
    ${GloRepLoginInformation}=  Set Variable  ${Data["GloRep_Login"]["ValidUserLogin"]}
    Set Global Variable  ${GloRepLoginInformation}

Get GloRep Invalid Login Email data
    ${GloRepInvalidLoginEmail}=    Set Variable  ${Data["GloRep_Login"]["InvalidUserLoginEmail"]}
    Set Global Variable  ${GloRepInvalidLoginEmail}    

Get GloRep Invalid Login Password data
    ${GloRepInvalidLoginPassword}=  Set Variable  ${Data["GloRep_Login"]["InvalidUserLoginPassword"]}
    Set Global Variable  ${GloRepInvalidLoginPassword}  

Get GloRep Empty User details data
    ${GloRepEmptyUserDetails}=  Set Variable  ${Data["GloRep_Login"]["EmptyUserDetails"]}
    Set Global Variable  ${GloRepEmptyUserDetails}  

Get GloRep Valid Login Reseller data
    ${GloRepResellerLoginData}=  Set Variable  ${Data["GloRep_Login"]["ResellerLogin"]}
    Set Global Variable  ${GloRepResellerLoginData}  

#Reseller data
Get GloRep Add Reseller data
    ${GlorepAddResellerDetails}=  Set Variable  ${Data["GlorepResellerDetails"]["AddReseller"]}
    Set Global Variable  ${GlorepAddResellerDetails}

Get GloRep Edit Reseller data
    ${GlorepEditResellerDetails}=  Set Variable  ${Data["GlorepResellerDetails"]["EditReseller"]}
    Set Global Variable  ${GlorepEditResellerDetails}

Get GloRep Reseller Packages data
    ${GlorepResellerPackagesDetails}=  Set Variable  ${Data["GlorepResellerDetails"]["AddPackageToReseller"]}
    Set Global Variable  ${GlorepResellerPackagesDetails}

#Customer Data
Get GloRep Reseller Customer data
    ${GlorepResellerCustomerData}=  Set Variable  ${Data["ResellerCreateCustomer"]["CreateCustomer"]}
    Set Global Variable  ${GlorepResellerCustomerData}

#Quote Data
Get GloRep Quote Customer data
    ${GlorepQuoteData}=  Set Variable  ${Data["Quote"]["NewCustomer"]}
    Set Global Variable  ${GlorepQuoteData}

Get GloRep Quote Existing Customer data
    ${GlorepQuoteExistingData}=  Set Variable  ${Data["Quote"]["ExistingCustomer"]}
    Set Global Variable  ${GlorepQuoteExistingData}

#Admin User Data
Get GloRep Add Admin User data
    ${GlorepAddAdminUserDetails}=  Set Variable  ${Data["GlorepAdminUserDetails"]["AddNewAdminUser"]}
    Set Global Variable  ${GlorepAddAdminUserDetails}

Get GloRep Edit Admin User data
    ${GlorepEditAdminUserDetails}=  Set Variable  ${Data["GlorepAdminUserDetails"]["EditAdminUser"]}
    Set Global Variable  ${GlorepEditAdminUserDetails}

#User Data
Get GloRep Reseller Login User data
    ${GlorepLoginUserDetails}=  Set Variable  ${Data["GlorepUserDetails"]["ExistingUser"]}
    Set Global Variable  ${GlorepLoginUserDetails}

Get GloRep Add User data
    ${GlorepAddUserDetails}=  Set Variable  ${Data["GlorepUserDetails"]["AddNewUser"]}
    Set Global Variable  ${GlorepAddUserDetails}

Get GloRep Edit User data
    ${GlorepEditUserDetails}=  Set Variable  ${Data["GlorepUserDetails"]["EditUser"]}
    Set Global Variable  ${GlorepEditUserDetails}

Get GloRep Add User Groups data
    ${GlorepAddUserGroupsDetails}=  Set Variable  ${Data["GlorepUserDetails"]["AddUserGroups"]}
    Set Global Variable  ${GlorepAddUserGroupsDetails}

Get New Currency Details
    ${GlorepCurrencyDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["AddCurrencyDetails"]}
    Set Global Variable  ${GlorepCurrencyDetails}

Get New VAT Details
    ${GlorepVATDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["AddVATDetails"]}
    Set Global Variable  ${GlorepVATDetails}

Get New Exchange Rate Details
    ${GlorepExchangeRateDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["AddExchangeRateDetails"]}
    Set Global Variable  ${GlorepExchangeRateDetails}

Get Existing Currency Details
    ${GlorepEditCurrencyDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["EditCurrencyDetails"]}
    Set Global Variable  ${GlorepEditCurrencyDetails}

Get Existing VAT Details
    ${GlorepEditVATDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["EditVATDetails"]}
    Set Global Variable  ${GlorepEditVATDetails}

Get Existing Exchange Rate Details
    ${GlorepEditExchangeRateDetails}=   Set Variable  ${Data["GlorepCurrencyVATExchangeRateDetails"]["EditExchangeRateDetails"]}
    Set Global Variable  ${GlorepEditExchangeRateDetails}

Get Config Groups Details
    ${GlorepGroupsDetails}=     Set Variable    ${Data["GlorepGroupsDetails"]["AddNewGroup"]}
    Set Global Variable     ${GlorepGroupsDetails}