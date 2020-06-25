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
    \  Input Add Currency Code      ${Item["Glorep_Currency_Code"]} 
    \  Input Add ISO Code       ${Item["Glorep_Currency_ISO_Code"]} 
    \  Input Add Currency Symbol        ${Item["Glorep_Currency_Symbol"]} 
    \  Input Add Currency Description       ${Item["Glorep_Currency_Description"]}
    \  Click Add ISO Format            
    \  Select Currency Status    ${Item["Glorep_Currency_Status"]} 
    \  Click Submit Currency
    \  Search for Item      ${Item["Glorep_Currency_Code"]} 
    \  Click Edit Currency
    \  Validate Currency Updated        ${Item["Glorep_Currency_Description"]}

Edit Existing Currency
    Get GloRep Reseller Login User data         
    Get Existing Currency Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration Currency Item
    :FOR  ${Item}  IN  @{GlorepEditCurrencyDetails}
    \  Search for Item      ${Item["Glorep_Currency_Code"]}
    \  Click Edit Currency
    \  Input Add Currency Description       ${Item["Glorep_Currency_Description"]}   
    \  Click Submit Currency
    \  Search for Item      ${Item["Glorep_Currency_Code"]}
    \  Click Edit Currency
    \  Validate Currency Updated        ${Item["Glorep_Currency_Description"]}

# --------------------------------------------------------------------------------------------
Create New VAT
    Get GloRep Reseller Login User data         
    Get New VAT Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration VAT Item
    :FOR  ${Item}  IN  @{GlorepVATDetails}
    \  Click Add New VAT       
    \  Input Add VAT Code      ${Item["Glorep_VAT_Code"]} 
    \  Input Add VAT Description       ${Item["Glorep_VAT_Description"]}
    \  Input Add VAT Value      ${Item["Glorep_VAT_Value"]} 
    \  Input Add VAT Start Date     ${Item["Glorep_VAT_Start_Date"]}
    \  Input Add VAT End Date      ${Item["Glorep_VAT_End_Date"]}
    \  Select VAT Status    ${Item["Glorep_VAT_Status"]} 
    \  Click Submit VAT
    \  Search for Item      ${Item["Glorep_VAT_Code"]} 
    \  Click Edit VAT
    \  Validate VAT Updated        ${Item["Glorep_VAT_Value"]}

Edit Existing VAT
    Get GloRep Reseller Login User data         
    Get Existing VAT Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration VAT Item
    :FOR  ${Item}  IN  @{GlorepEditVATDetails}
    \  Search for Item      ${Item["Glorep_VAT_Code"]}
    \  Click Edit VAT
    \  Input Add VAT Value      ${Item["Glorep_VAT_Value"]} 
    \  Click Submit VAT
    \  Search for Item      ${Item["Glorep_VAT_Code"]}
    \  Click Edit VAT
    \  Validate VAT Updated        ${Item["Glorep_VAT_Value"]}
#-----------------------------------------------------------------------------------------------------
Create New ExRate
    Get GloRep Reseller Login User data         
    Get New Exchange Rate Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration Exchange Rate Item
    :FOR  ${Item}  IN  @{GlorepExchangeRateDetails}
    \  Click Add New ExRate       
    \  Input Add ExRate Base Currency      ${Item["Glorep_ExRate_Base_Currency"]} 
    \  Input Add ExRate To Currency       ${Item["Glorep_ExRate_To_Currency"]}
    \  Input Add ExRate To Rate      ${Item["Glorep_ExRate_To_Rate"]} 
    \  Input Add ExRate Start Date     ${Item["Glorep_ExRate_Start_Date"]}
    \  Input Add ExRate End Date      ${Item["Glorep_ExRate_End_Date"]}
    \  Input Add ExRate Description       ${Item["Glorep_ExRate_Description"]}
    \  Select ExRate Status    ${Item["Glorep_ExRate_Status"]} 
    # \  Click Submit ExRate
    # \  Search for Item      ${Item["Glorep_ExRate_Description"]} 
    # \  Click Edit ExRate
    # \  Validate ExRate Updated        ${Item["Glorep_ExRate_Description"]}

Edit Existing ExRate
    Get GloRep Reseller Login User data         
    Get Existing Exchange Rate Details
    Login as Reseller
    Click Side Configuration Menu Item
    Click Configuration Exchange Rate Item
    :FOR  ${Item}  IN  @{GlorepEditExchangeRateDetails}
    \  Search for Item      ${Item["Glorep_ExRate_Description"]}
    \  Click Edit ExRate
    \  Input Add ExRate Value      ${Item["Glorep_ExRate_Value"]} 
    \  Click Submit ExRate
    \  Search for Item      ${Item["Glorep_ExRate_Description"]}
    \  Click Edit ExRate
    \  Validate ExRate Updated        ${Item["Glorep_ExRate_Description"]}