*** Settings ***
Documentation  This test suite contains test cases that is related to the Configuration tab under the reseller Glorep portal and the related functionality
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
# Test Creating Currency
#     [Documentation]  Verify that the GloRep Application allows existing users to add a currency
#     Set Selenium Speed    0.2
#     Create New Currency

# Test Editing Currency
#     [Documentation]  Verify that the GloRep Application allows existing users to edit a currency
#     Set Selenium Speed    0.2
#     Edit Existing Currency

# Test Creating VAT
#     [Documentation]  Verify that the GloRep Application allows existing users to add VAT
#     Set Selenium Speed    0.2
#     Create New VAT

# Test Editing VAT
#     [Documentation]  Verify that the GloRep Application allows existing users to edit VAT
#     Set Selenium Speed    0.2
#     Edit Existing VAT

Test Create Exchange Rate
    [Documentation]  Verify that the GloRep Application allows existing users to Add Exchange Rate
    Set Selenium Speed    0.2
    Create New ExRate

# Test Editing Exchange Rate 
#     [Documentation]  Verify that the GloRep Application allows existing users to edit Exchange Rate
#     Set Selenium Speed    0.2
#     Edit Existing ExRate

# Test Creating Group

# Test Creating Subgroup

# Test Creating Group Roles

# Test Deleting Group