*** Settings ***
Documentation  Define Common keywords that are linked to login on the GloRep Application

*** Keywords ***
Add New Reseller
    Get GloRep Add Reseller data
    :FOR  ${Item}  IN  ${Glorep_Add_Reseller_Details}
    \  Login of an existing user         
    \  Click on ${Add_New_Reseller}        
    # \  Input Reseller ${Item["Code"]} at ${Reseller_Code}
    \  Input Reseller ${Item["FirstName"]} at ${Reseller_FirstName}     
    # \  Input Reseller    ${Item["Password"]}   
    # \  Input Reseller    ${Item["FirstName"]}
    # \  Input Reseller    ${Item["Lastname"]}
    # \  Input Reseller    ${Item["Contact_Person"]}
    # \  Input Reseller    ${Item["Contact_Email"]}
    # \  Input Reseller    ${Item["Mobile_Number"]}
    # \  Input Reseller    ${Item["Landline_Number"]}
    # \  Input Reseller    ${Item["Technologies"]}                 
    # \  Input Reseller    ${Item["Physical_Address_1"]}
    # \  Input Reseller    ${Item["Physical_Address_2"]}
    # \  Select Reseller Show Storefront Options          
    # \  Select Reseller Status         
    # \  Select Reseller Base Currency         
    # \  Select Reseller Title         
    # \           
    # \  Click Submit Reseller         
    # \  Click on Edit Reseller         
    # \  Click on View Packages         
    # \  Search for Reseller         
    # \  Validate Reseller Updated Landline Number         
    # \  Validate Reseller Updated Mobile Number            