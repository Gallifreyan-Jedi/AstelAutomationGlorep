*** Settings ***
Documentation  Imports All the Scenarios, both Buitin and Custom, for the Hybris Solution
Library  Collections
Resource  PageObjectIncludeList.resource

*** Variables ***

*** Keywords ***
### Include all the Builtin Scenarios and their Keywords
Import Builtin Scenarios
    Import Page Object Keywords
    @{FilesSC} =  Return Builtin Filename List  ${CURDIR}/../AstelKeywordLibraries/Scenarios/  ${SITENAME}
    :FOR  ${fileSC}  IN  @{FilesSC}
    \   Import Resource  ${CURDIR}/../AstelKeywordLibraries/Scenarios/${fileSC}

### Override Builtin Scenarios and their Keywords with Custom ones
Import Custom Scenarios
    @{CustomFilesSC} =  Return Custom Filename List  ${CURDIR}/../AstelKeywordLibraries/Scenarios/Custom/  ${SITENAME}
    :FOR  ${cfileSC}  IN  @{CustomFilesSC}
    \   Import Resource  ${CURDIR}/../AstelKeywordLibraries/Scenarios/Custom/${cfileSC}

### Override keyword search order to first use the Custom Keywords
Set Lib Search Order for Page Objects
    @{LibsPO} =  Return Custom Resource List  ${CURDIR}/../AstelKeywordLibraries/PageObjects/Custom/  ${SITENAME}    
    Set Suite Variable  @{LibsPO}

Set Lib Search Order for Scenarios
    @{LibsSC} =  Return Custom Resource List  ${CURDIR}/../AstelKeywordLibraries/Scenarios/Custom/  ${SITENAME}
    Set Suite Variable  @{LibsSC}

Set Lib Search Order
    Set Lib Search Order for Page Objects
    Set Lib Search Order for Scenarios
    @{CombinedSearchOrder} =  Combine Lists  ${LibsPO}  ${LibsSC}
    Set Library Search Order  @{CombinedSearchOrder}

### Publicly called Keyword for "functions" in this resource file
Import Solution Keywords
    Import Builtin Scenarios
    Import Custom Scenarios
    Set Lib Search Order