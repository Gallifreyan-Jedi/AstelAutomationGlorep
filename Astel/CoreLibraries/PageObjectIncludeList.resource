*** Settings ***
Documentation  Imports All the Page Objects, both Buitin and Custom for the Hybris Solution
Library  ListCustomResources.py

*** Variables ***

*** Keywords ***
### Include all the Builtin Page Objects and their Keywords
Import Builtin Page Objects
    @{FilesPO} =  Return Builtin Filename List  ${CURDIR}/../AstelKeywordLibraries/PageObjects/  ${SITENAME}
    :FOR  ${filePO}  IN  @{FilesPO}
    \   Import Resource  ${CURDIR}/../AstelKeywordLibraries/PageObjects/${filePO}

Import Custom Page Objects
    @{CustomFilesPO} =  Return Custom Filename List  ${CURDIR}/../AstelKeywordLibraries/PageObjects/Custom/  ${SITENAME}
    :FOR  ${cfilePO}  IN  @{CustomFilesPO}
    \   Import Resource  ${CURDIR}/../AstelKeywordLibraries/PageObjects/Custom/${cfilePO}

### Publicly called Keywords for "functions" in this resource file
Import Page Object Keywords
    Import Builtin Page Objects
    Import Custom Page Objects