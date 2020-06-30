*** Settings ***
Documentation  Imports All the Scenarios, both Buitin and Custom, for the Hybris Solution
Library  Selenium2Library
Resource  ../../CoreLibraries/DataInclude.resource
Resource  ../../CoreLibraries/ScenariosIncludeList.resource

*** Variables ***

*** Keywords ***
### Scenarios related to the launcing and closing of browsers for the test
Launch Application Under Test
    [Documentation]  Opens the GloRep application in the <BROWSER> specified in run command or data repository
    Import Test Data
    Import Solution Keywords
    Open Browser  ${Data["setup"]["WEBURL"]}  ${BROWSER}
    Maximize Browser Window 
    Sleep   10s
    # Set Selenium speed  0.5s
    # Validate on Home Page
    
Terminate Application Under Test
    [Documentation]  Closes the GloRep application in the <BROWSER>
    Close All Browsers


