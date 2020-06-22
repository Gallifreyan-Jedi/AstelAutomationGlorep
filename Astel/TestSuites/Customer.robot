*** Settings ***
Documentation  This test suite contains test cases that is related to the Customer functionality of the GloRep Application
...            business users
Resource  ../AstelKeywordLibraries/Scenarios/Common.resource

Test Setup  Launch Application Under Test
Test Teardown  Terminate Application Under Test

*** Test Cases ***
# Test Creation Of Customer
#     [Documentation]  Verify that the GloRep Application allows new customers to be created
#     Set Selenium Speed    0.2
#     Create Customer 

Test Customer Edit
    [Documentation]  Verify that the GloRep Application allows customers to be updated
    Set Selenium Speed    0.2
    Edit Customer  