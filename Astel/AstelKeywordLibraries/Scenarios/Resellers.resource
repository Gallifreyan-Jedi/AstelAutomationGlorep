*** Settings ***
Documentation  Define Common keywords that are linked to login on the GloRep Application

*** Keywords ***
Add New Reseller
    Get GloRep Add Reseller data    
    Login of an existing user         
    Click on Add New Reseller  
    :FOR  ${Item}  IN  @{GlorepAddResellerDetails}
    # \  Input Reseller Code   ${Item["Code"]} 
    \  Input Reseller Username   ${Item["Glorep_Username"]}      
    \  Input Reseller Password   ${Item["Glorep_Password"]}   
    # \  Input Reseller First Name    ${Item["Glorep_FirstName"]}
    # \  Input Reseller Last Name   ${Item["Glorep_Lastname"]}
    # \  Input Reseller Contact Person   ${Item["Glorep_Contact_Person"]}
    # \  Input Reseller Contact Email   ${Item["Glorep_Contact_Email"]}
    # \  Input Reseller Mobile Number   ${Item["Glorep_Mobile_Number"]}
    # \  Input Reseller LandLine Number   ${Item["Glorep_Landline_Number"]}
    # \  Input Reseller Technologies   ${Item["Glorep_Technologies"]}                 
    # \  Input Reseller Physical Address 1   ${Item["Glorep_Physical_Address_1"]}
    # \  Input Reseller Physical Address 2   ${Item["Glorep_Physical_Address_2"]}
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