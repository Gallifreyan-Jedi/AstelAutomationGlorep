*** Settings ***
Documentation  This test suite contains test cases that is related to the Add Admin users functionality of the GloRep Application
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
# Test Creating an Admin User
#     [Documentation]  Verify that the GloRep Application allows existing users to add a reseller
#     Set Selenium Speed    0.2
#     Add New Admin User

# Test Editing an Admin User
#     [Documentation]  Verify that the GloRep Application allows existing users to add an admin user
#     Set Selenium Speed    0.2
#     Edit Existing Admin User
# 
# Test Create a User
#     [Documentation]  Verify that the GloRep Application allows existing users to add a user as a reseller
#     Set Selenium Speed    0.2
#     Add New User

# Test Edit an Existing User
#     [Documentation]  Verify that the GloRep Application allows existing users to Edit a user as a reseller
#     Set Selenium Speed    0.2
#     Edit Existing User

# Test Editing a User Password
#     [Documentation]  Verify that the GloRep Application allows existing users to Edit a user Password as a reseller
#     Set Selenium Speed    0.2
#     Edit User Password

Test Deactivating a User
    [Documentation]  Verify that the GloRep Application allows existing users to Deactivate a user as a reseller
    Set Selenium Speed    0.2
    Deactivate Existing User