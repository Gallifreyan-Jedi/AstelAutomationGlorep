*** Settings ***
Documentation  Define Common keywords that are linked to Administration or Service Provider User Management on the GloRep Application

*** Keywords ***
Add New Admin User
    Get GloRep Add Admin User data 
    Login of an existing user         
    Click Side Administration Menu Item
    Click Create Service User Management Menu Item
    Validate Service User Management Page
    :FOR  ${Item}  IN  @{GlorepAddAdminUserDetails}
    \  Click Add Admin Button 
    \  Input Admin Username   ${Item["Glorep_Admin_Username"]}      
    \  Input Admin Password   ${Item["Glorep_Admin_Password"]}   
    \  Input Admin First Name    ${Item["Glorep_Admin_FirstName"]}
    \  Input Admin Last Name   ${Item["Glorep_Admin_Lastname"]}
    \  Input Admin Job Title    ${Item["Glorep_Admin_Job_Title"]}
    \  Input Admin Mobile Number   ${Item["Glorep_Admin_Mobile_Number"]}
    \  Click Admin Force Change Password
    \  Click Admin Submit Button  
    \  Search for Reseller      ${Item["Glorep_Admin_Username"]}
    \  Click Edit Admin Button
    \  Validate Admin User Updated Mobile Number   ${Item["Glorep_Admin_Mobile_Number"]}

Edit Existing Admin User
    Get GloRep Edit Admin User data 
    Login of an existing user         
    Click Side Administration Menu Item
    Click Create Service User Management Menu Item
    Validate Service User Management Page
    :FOR  ${Item}  IN  @{GlorepEditAdminUserDetails}
    \  Search for Reseller      ${Item["Glorep_Admin_Username"]}
    \  Click Edit Admin Button
    \  Input Admin Mobile Number   ${Item["Glorep_Admin_Mobile_Number"]}
    \  Click Admin Submit Button  
    \  Search for Reseller      ${Item["Glorep_Admin_Username"]}
    \  Click Edit Admin Button
    \  Validate Admin User Updated Mobile Number   ${Item["Glorep_Admin_Mobile_Number"]}