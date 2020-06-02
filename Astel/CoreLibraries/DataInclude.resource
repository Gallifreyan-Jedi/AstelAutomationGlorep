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

