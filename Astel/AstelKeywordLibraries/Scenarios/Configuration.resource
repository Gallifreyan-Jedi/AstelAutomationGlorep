*** Settings ***
Documentation  Define Common keywords that are linked to Configuration on the GloRep Application

*** Keywords ***
Create New Currency
    Get GloRep Reseller Login User data         
    Get New Currency Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration Currency Item
    :FOR  ${Item}  IN  @{GlorepCurrencyDetails}
    \  Click Add New Currency
    \  Click Add Currency Code
    \  Click Add ISO Code
    \  Click Add Currency Symbol 
    \  Click Add Currency Description
    \  Click Add ISO Format
    \  Select Currency Status 
    # \  Click Submit 
    \  Search for Item      ${Item["Glorep_Currency_Code"]}
    \  Validate User is Deacivated  

Edit Existing Currency
    Get GloRep Reseller Login User data         
    Get Existing Currency Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration Currency Item
    :FOR  ${Item}  IN  @{GlorepEditCurrencyDetails}
    \  Search for Item      ${Item["Glorep_Currency_Code"]}
    \  Click User Action Dropdown
    # \  Click Edit 
    # \  Click Submit 
    \  Search for Item      ${Item["Glorep_Currency_Code"]}
    \  Validate User is Deacivated  

Create VAT
    Get GloRep Reseller Login User data         
    Get New VAT Details 
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration VAT Item