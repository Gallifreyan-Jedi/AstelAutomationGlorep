*** Settings ***
Documentation  Define Common keywords that are linked to login on the GloRep Application

*** Keywords ***
Add New Reseller
    Get GloRep Add Reseller data    
    Login of an existing user         
    Click on Add New Reseller  
    Validate Add Reseller PopUp
    :FOR  ${Item}  IN  @{GlorepAddResellerDetails}
    \  Input Reseller Code   ${Item["Glorep_Code"]} 
    \  Input Reseller Username   ${Item["Glorep_Username"]}      
    \  Input Reseller Password   ${Item["Glorep_Password"]}   
    \  Select Reseller Title     ${Item["Glorep_Title"]} 
    \  Input Reseller First Name    ${Item["Glorep_FirstName"]}
    \  Input Reseller Last Name   ${Item["Glorep_Lastname"]}
    \  Select Reseller Status      ${Item["Glorep_Status"]}
    \  Select Reseller Service Provider     ${Item["Glorep_Service_Provider"]}
    \  Select Reseller Base Currency    ${Item["Glorep_Base_Currency"]}  
    \  Input Reseller Contact Person   ${Item["Glorep_Contact_Person"]}
    \  Input Reseller Contact Email   ${Item["Glorep_Contact_Email"]}
    \  Input Reseller Mobile Number   ${Item["Glorep_Mobile_Number"]}
    \  Input Reseller LandLine Number   ${Item["Glorep_Landline_Number"]}
    \  Select Reseller Technologies     ${Item["Glorep_Technologies"]}                 
    \  Input Reseller Physical Address 1   ${Item["Glorep_Physical_Address_1"]}
    \  Input Reseller Physical Address 2   ${Item["Glorep_Physical_Address_2"]}
    \  Select Reseller Show Storefront Options
    \  Click Submit Reseller   
    \  Search for Reseller  ${Item["Glorep_Code"]} 
    \  Click on Edit Reseller         
    \  Validate Reseller Updated Landline Number   ${Item["Glorep_Landline_Number"]}
    \  Validate Reseller Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}


Edit Existing Reseller
    Get GloRep Edit Reseller data    
    Login of an existing user         
    :FOR  ${Item}  IN  @{GlorepEditResellerDetails}
    \  Search for Reseller  ${Item["Glorep_Code"]} 
    \  Click on Edit Reseller        
    \  Validate Edit Reseller PopUp
    \  Input Reseller Mobile Number   ${Item["Glorep_Mobile_Number"]}
    \  Input Reseller LandLine Number   ${Item["Glorep_Landline_Number"]} 
    \  Click Submit Reseller
    \  Search for Reseller  ${Item["Glorep_Code"]} 
    \  Click on Edit Reseller
    \  Validate Reseller Updated Landline Number   ${Item["Glorep_Landline_Number"]}
    \  Validate Reseller Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}

View Reseller Packages
    Get GloRep Add Reseller data    
    Login of an existing user         
    :FOR  ${Item}  IN  @{GlorepAddResellerDetails}
    \  Search for Reseller  ${Item["Glorep_Code"]} 
    \  Click on View Reseller Packages    
    \  Validate Reseller View Packages PopUp

Add Reseller Packages
    Get GloRep Reseller Packages data  
    Login of an existing user 
    Click on Assign Solution Item
    :FOR  ${Item}  IN  @{GlorepResellerPackagesDetails}
    \  Search for Packages   ${Item["Glorep_Package"]} 
    \  Click on Add Reseller Packages
    \  Search for Reseller in Add Packages   ${Item["Glorep_Code"]} 
    \  Click on Add Package to Reseller
    # \  Validate Reseller View Packages PopUp