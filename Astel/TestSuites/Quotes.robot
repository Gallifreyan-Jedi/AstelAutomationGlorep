*** Settings ***
Documentation  This test suite contains test cases that is related to the Quote functionality of the GloRep Application
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
Test Quote Creation for New User
    [Documentation]  Verify that the GloRep Application allows quote generation for new customer
    Set Selenium Speed    0.2
    Create Quote New Customer

Test Quote Creation for Existing User
    [Documentation]  Verify that the GloRep Application allows quote generation for existing customer
    Set Selenium Speed    0.2
    create Quote Existing Customer 