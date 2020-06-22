*** Settings ***
Documentation  Define Common keywords that are linked to login on the GloRep Application

*** Keywords ***
Login of an existing user
    [Documentation]  Excecute the steps to login with correct existing user credentials
    Get GloRep Valid Login data
    :FOR  ${Item}  IN  @{GloRepLoginInformation}
    \  Input GloRep Login Email Address  ${Item["Login_Email"]}
    \  Input GloRep Login Password  ${Item["Login_Password"]}
    \  Click GloRep Login Button 
    \  Validate Succesful Login


Invalid Login Incorrect Email
    [Documentation]  Excecute the steps to login with incorrect email but correct password
    Get GloRep Invalid Login Email data
    :FOR  ${Item}  IN  @{GloRepInvalidLoginEmail}
    \  Input GloRep Login Email Address  ${Item["InvalidLogin_IncorrectEmail"]}
    \  Input GloRep Login Password  ${Item["InValidLogin_Password"]}
    \  Click GloRep Login Button 
    \  Validate Unsuccesful Login      ${Item["InvalidLoginValidation"]}


Invalid Login Incorrect Password
    [Documentation]  Excecute the steps to login with correct email but incorrect password
    Get GloRep Invalid Login Password data
    :FOR  ${Item}  IN  @{GloRepInvalidLoginPassword}
    \  Input GloRep Login Email Address  ${Item["InvalidLogin_Email"]}
    \  Input GloRep Login Password  ${Item["InValidLogin_IncorrectPassword"]}
    \  Click GloRep Login Button 
    \  Validate Unsuccesful Login      ${Item["InvalidLoginValidation"]}

Login with empty user details
    [Documentation]  Excecute the steps to login with correct email but incorrect password
    Get GloRep Empty User details data
    :FOR  ${Item}  IN  @{GloRepEmptyUserDetails}
    \  Click GloRep Login Button 
    \  Validate Unsuccesful Login     ${Item["EmptyUserDetailsEmailValidation"]}
    \  Validate Unsuccesful Login     ${Item["EmptyUserDetailsPasswordValidation"]}

Login as Reseller
    [Documentation]  Excecute the steps to login with correct existing user credentials
    Get GloRep Valid Login Reseller data
    :FOR  ${Item}  IN  @{GloRepResellerLoginData}
    \  Input GloRep Login Email Address  ${Item["Login_Email"]}
    \  Input GloRep Login Password  ${Item["Login_Password"]}
    \  Sleep   5s
    \  Click GloRep Login Button 
    \  Validate Succesful Login
    \  Search for Reseller          ${Item["ResellerCode"]}
    \  Click Login As Reseller
    # \  Validate Reseller Login      ${Item["ResellerName"]}
