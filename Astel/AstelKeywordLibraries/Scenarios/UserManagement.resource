*** Settings ***
Documentation  Define Common keywords that are linked to Administration of User Management on the GloRep Application

*** Keywords ***
#=============================================
#Get flow of scenarios 
Add New User
    Get GloRep Reseller Login User data         
    Get GloRep Add User data
    Login as Reseller
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepAddUserDetails}
    \  Click Add User Button 
    \  Input User Username   ${Item["Glorep_Username"]}      
    \  Input User Password   ${Item["Glorep_Password"]}   
    \  Input User First Name    ${Item["Glorep_FirstName"]}
    \  Input User Last Name   ${Item["Glorep_Lastname"]}
    \  Input User Job Title    ${Item["Glorep_Job_Title"]}
    \  Input User Mobile Number   ${Item["Glorep_Mobile_Number"]}
    \  Click User Force Change Password
    \  Click User Submit Button  
    \  Click Close User Groups Dialog
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click Edit User Button
    \  Validate User Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}

Edit Existing User
    Get GloRep Edit User data 
    Get GloRep Reseller Login User data      
    Login as Reseller  
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepEditUserDetails}
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click Edit User Button
    \  Input User Mobile Number   ${Item["Glorep_Mobile_Number"]}
    \  Click User Submit Button  
    \  Click Close User Groups Dialog
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click Edit User Button
    \  Validate User Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}

Edit User Password
    Get GloRep Edit User data 
    Get GloRep Reseller Login User data      
    Login as Reseller  
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepEditUserDetails}
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click Edit User Button
    \  Click Change Password Button
    \  Input User Password   ${Item["Glorep_Password"]} 
    \  Click User Submit Button  
    \  Click Close User Groups Dialog
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click Edit User Button
    \  Validate User Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}

Deactivate Existing User
    Get GloRep Reseller Login User data         
    Get GloRep Edit User data
    Login as Reseller
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepEditUserDetails}
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click User Action Dropdown
    \  Click Deactivate User
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Validate User is Deacivated  