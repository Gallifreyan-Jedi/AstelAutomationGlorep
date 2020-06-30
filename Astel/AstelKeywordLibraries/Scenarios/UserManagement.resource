*** Settings ***
Documentation  Define Common keywords that are linked to Administration of User Management on the GloRep Application

*** Keywords ***
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
    # \  Search for Reseller      ${Item["Glorep_Username"]}
    # \  Click Edit User Button
    # \  Validate User Updated Mobile Number   ${Item["Glorep_Mobile_Number"]}

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

Add user to User Group
    Get GloRep Reseller Login User data         
    Get GloRep Add User Groups data
    Login as Reseller
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepAddUserGroupsDetails}
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click User Action Dropdown
    \  Click User Groups
    \  Select User Group        ${Item["Glorep_User_Group"]}
    \  Click Add User Group
    \  Validate User Group Added    ${Item["Glorep_User_Group"]}

Lock and Unlock User account   
    Get GloRep Reseller Login User data         
    Get GloRep Add User Groups data
    Login as Reseller
    Click Side Administration Menu Item
    Click Create User Menu Item
    :FOR  ${Item}  IN  @{GlorepAddUserGroupsDetails}
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click User Action Dropdown
    \  Click Lock User
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click User Action Dropdown
    \  Validate User Locked 
    \  Click Unlock User
    \  Search for Reseller      ${Item["Glorep_Username"]}
    \  Click User Action Dropdown
    \  Validate User Unlocked  