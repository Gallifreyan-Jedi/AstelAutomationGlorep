*** Settings ***
Documentation  Define Common keywords that are linked to Quote functionality on the GloRep Application

*** Keywords ***
Create Quote New Customer
    [Documentation]  Excecute the steps to create a quote for a new user and process checkout
    Get GloRep Quote Customer data
    :FOR  ${Item}  IN  @{GlorepQuoteData}
    \  Login as Reseller
    \  Click Quote Menu Item 
    \  Click Create Quote Menu Item 
    \  Input Quote Search Value                         ${Item["QuoteSearch"]}
    \  Click Quote Search Button 
    \  Click Add To Cart Button 
    \  Click My Cart Button 
    \  Click Checkout Button 
    \  Click New Customer Button 
    \  Select Customer Type                             ${Item["CustType"]}
    \  Select customer Title                            ${Item["CustTitle"]}
    \  Input Customer Domain                            ${Item["Domain"]}
    \  Input Customer IDNumber                          ${Item["CustIDNum"]}
    \  Select Customer Status                           ${Item["CustStatus"]}
    \  Input Customer Email                             ${Item["CustEmail"]}
    \  Input customer Mobile Number                     ${Item["CustMobile"]}
    \  Input Customer Landline Number                   ${Item["CustLandline"]}
    \  Click Next Button 
    \  Input Customer Address Line1                     ${Item["CustAddressLine1"]}
    \  Input Customer Address Line2                     ${Item["CustAddressLine2"]}
    \  Input Customer Address Line3                     ${Item["CustAddressLine3"]}
    \  Input Customer Address Line4                     ${Item["CustAddressLine4"]}
    \  Input Customer Address Postal Code               ${Item["CustPostalCode"]}
    \  Click Next Button 
    \  Select Quote Customer Region                     ${Item["CustRegion"]}
    \  Select Quote Customer Preffered Language         ${Item["CustPrefferedLanguage"]}
    \  Select Quote Customer Payment Type               ${Item["CustPaymentType"]}
    \  Select Customer Vat                              ${Item["Vat"]}
    \  Select Quote Customer Delivery Method            ${Item["DeliveryMethod"]}
    \  Select Quote Customer Classification             ${Item["Classification"]}
    \  Input Quote Customer Remarks                     ${Item["Remarks"]}
    \  Click Next Button 
    \  Input Customer Job Title                         ${Item["JobTitle"]}
    \  Input Customer Job Functional Area               ${Item["FunctionArea"]}      
    \  Input Customer First Name                        ${Item["FirstName"]}
    \  Input Customer Last Name                         ${Item["LastName"]}
    \  Input customer Birthday                          ${Item["Birthday"]}
    \  Input Customer Contact Mobile                    ${Item["Mobile"]}
    \  Input Customer Contact Office Number             ${Item["Office"]}
    \  Input Customer Contact Email                     ${Item["Email"]}
    \  Input Customer Comments                          ${Item["Comments"]}
    \  Click Customer Submit Button 
    \  Sleep  5s
    \  Click Service Agreement Link
    \  Input Service Agreement First Name               ${Item["SAFirstName"]}
    \  Input Service Agreement Last Name                ${Item["SALastName"]}
    \  Input Service Agreement Email                    ${Item["SAEmail"]}
    \  Input Service Agreement Date                     ${Item["SAAgreementDate"]}
    \  Click Service Agreement Submit
    \  Sleep  5s
    \  Click Details Button
    \  Select Quote Bill Cycle                          ${Item["BillCycle"]}
    \  Input Contract Start Date                        ${Item["ContractStartDate"]}
    \  Input Contract End Date                          ${Item["ContractEndDate"]}
    \  Input Technology Friendly Name                   ${Item["FriendlyName"]}
    \  Input Resource Group                             ${Item["ResourceGroup"]}
    \  Click Save Quote Details Button 
    \  Sleep  5s
    \  Click Process Order Button 
    \  Sleep  5s
    \  Validate Order Creation 

Create Quote Existing Customer
    [Documentation]  Excecute the steps to create a quote for a new user and process checkout
    Get GloRep Quote Existing Customer data
    :FOR  ${Item}  IN  @{GlorepQuoteExistingData}
    \  Login as Reseller
    \  Click Quote Menu Item 
    \  Click Create Quote Menu Item 
    \  Input Quote Search Value                         ${Item["QuoteSearch"]}
    \  Click Quote Search Button 
    \  Click Add To Cart Button 
    \  Click My Cart Button 
    \  Click Checkout Button 
    \  Sleep    15s
    \  Click Existing Customer Button
    \  Select Existing Customer                         ${Item["CustomerSearch"]}
    \  Sleep  5s
    \  Click Next Button 
    \  Click Next Button 
    \  Click Next Button 
    \  Click Customer Submit Button
    \  Sleep  5s
    # \  Click Service Agreement Link
    # \  Input Service Agreement First Name               ${Item["SAFirstName"]}
    # \  Input Service Agreement Last Name                ${Item["SALastName"]}
    # \  Input Service Agreement Email                    ${Item["SAEmail"]}
    # \  Input Service Agreement Date                     ${Item["SAAgreementDate"]}
    # \  Click Service Agreement Submit
    \  Sleep  5s
    \  Click Details Button
    \  Select Quote Bill Cycle                          ${Item["BillCycle"]}
    \  Input Contract Start Date                        ${Item["ContractStartDate"]}
    \  Input Contract End Date                          ${Item["ContractEndDate"]}
    \  Input Technology Friendly Name                   ${Item["FriendlyName"]}
    \  Input Resource Group                             ${Item["ResourceGroup"]}
    \  Click Save Quote Details Button 
    \  Sleep  5s
    \  Click Process Order Button 
    \  Sleep  5s
    \  Validate Order Creation 

