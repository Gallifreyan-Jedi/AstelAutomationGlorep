*** Settings ***
Documentation  This test suite contains test cases that is related to the Login functionality of the GloRep Application
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
Test Login Of Existing User
    [Documentation]  Verify that the GloRep Application allows existing users to login
    Set Selenium Speed    0.2
    Login of an existing user

Test Invalid login Incorrect email
    [Documentation]  Verify that the GloRep Application does not allow users with incorrect email to enter the system
    Set Selenium Speed    0.2
    Invalid Login Incorrect Email

Test Invalid login Incorrect Password
    [Documentation]  Verify that the GloRep Application does not allow users with incorrect password to enter the system
    Set Selenium Speed    0.2
    Invalid Login Incorrect Password
    
Test Empty User Details
    [Documentation]  Verify that the GloRep Application does not allow the user to proceed without username and password
    Set Selenium Speed    0.2
    Login with empty user details
    