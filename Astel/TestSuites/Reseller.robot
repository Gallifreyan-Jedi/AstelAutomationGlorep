*** Settings ***
Documentation  This test suite contains test cases that is related to the Add Reseller functionality of the GloRep Application
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
# Test Creating a Reseller User
#     [Documentation]  Verify that the GloRep Application allows existing users to add a reseller
#     Set Selenium Speed    0.2
#     Add New Reseller
# 
# Test Editing a Reseller User
#     [Documentation]  Verify that the GloRep Application allows existing users to Edit a reseller
#     Set Selenium Speed    0.2
#     Edit Existing Reseller
# 
Test View Reseller View Packages 
    [Documentation]  Verify that the GloRep Application allows existing users to view packages assigned to a reseller
    Set Selenium Speed    0.2
    View Reseller Packages

Test Reseller Add Packages 
    [Documentation]  Verify that the GloRep Application allows existing users to assign a package to a reseller
    Set Selenium Speed    0.2
    Add Reseller Packages