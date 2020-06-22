*** Settings ***
Documentation  Define Common keywords that are linked to login on the GloRep Application

*** Keywords ***
Create Customer 
    [Documentation]  Excecute the steps to create a customer
    Get GloRep Reseller Customer data
    :FOR  ${Item}  IN  @{GlorepResellerCustomerData}
    \  Login as Reseller
    \  Click Customer Menu Item
    \  Click Create customer Menu Item
    \  Select Customer Type                     ${Item["CustType"]}
    \  Select Customer Title                    ${Item["CustTitle"]}
    \  Input Customer IDNumber                  ${Item["CustIDNum"]}
    \  Select Customer Status                   ${Item["CustStatus"]}
    \  Input Customer Email                     ${Item["CustEmail"]}
    \  Input Customer Mobile Number             ${Item["CustMobile"]}
    \  Input Customer Landline Number           ${Item["CustLandline"]}
    \  Click Next Button 
    \  Input Customer Address Line1             ${Item["CustAddressLine1"]}
    \  Input Customer Address Line2             ${Item["CustAddressLine2"]}
    \  Input Customer Address Line3             ${Item["CustAddressLine3"]}
    \  Input Customer Address Line4             ${Item["CustAddressLine4"]}
    \  Input Customer Address Postal Code       ${Item["CustPostalCode"]}
    \  Click Next Button 
    \  select Customer Currency                 ${Item["CustPrefferedCurrency"]}
    \  Select Customer Region                   ${Item["CustRegion"]}
    \  Select Customer Preffered Language       ${Item["CustPrefferedLanguage"]}
    \  Select Customer Payment Type             ${Item["CustPaymentType"]}
    \  Select Customer Vat                      ${Item["Vat"]}
    \  Select Customer Delivery Method          ${Item["DeliveryMethod"]}
    \  Select Customer Classification           ${Item["Classification"]}
    \  Input Customer Remarks                   ${Item["Remarks"]}
    \  Click Next Button 
    \  Input Customer Job Title                 ${Item["JobTitle"]}
    \  Input Customer Job Functional Area       ${Item["FunctionArea"]}      
    \  Input Customer First Name                ${Item["FirstName"]}
    \  Input Customer Last Name                 ${Item["LastName"]}
    \  Input customer Birthday                  ${Item["Birthday"]}
    \  Input Customer Contact Mobile            ${Item["Mobile"]}
    \  Input Customer Contact Office Number     ${Item["Office"]}
    \  Input Customer Contact Email             ${Item["Email"]}
    \  Input Customer Comments                  ${Item["Comments"]}
    \  Click Customer Submit Button 
    \  Sleep   5s
    \  Input Customer Search                    ${Item["Search"]}
    \  Validate Customer Creation               ${Item["LastName"]}

Edit Customer 
    [Documentation]  Excecute the steps to Edit a customer
    Get GloRep Reseller Customer data
    :FOR  ${Item}  IN  @{GlorepResellerCustomerData}
    \  Login as Reseller
    \  Click Customer Menu Item
    \  Click View Customer Menu
    \  Input Customer Search                    ${Item["Search"]}
    \  Validate Customer Creation               ${Item["LastName"]}
    \  Click Edit Customer 
    \  Validate Landline Number                 ${Item["CustLandline"]}
    \  Input Customer Landline Number           ${Item["CustLandlineChange"]}
    \  Click Next Button 
    \  Click Next Button 
    \  Click Next Button 
    \  Click Customer Submit Button 
    \  Sleep   5s
    \  Input Customer Search                    ${Item["Search"]}
    \  Click Edit Customer 
    \  Validate Landline Number                 ${Item["CustLandlineChange"]}