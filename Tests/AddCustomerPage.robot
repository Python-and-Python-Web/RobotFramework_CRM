*** Settings ***
Documentation       Add New Customer Testing Scenarios
Resource            ../Resources/common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test


*** Variables ***
${BROWSER} =                            chrome
${URL} =                                https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =                  admin@robotframework.com
${VALID_LOGIN_PASSWORD} =               _CoffeeCup852!


*** Test Cases ***

Should be able to add new customer
    [Documentation]             Testing: Should be able to add new customer successfully
    [Tags]                      1006 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out

Cancel the Customer Adding Process By Clicking CANCEL Button
    [Documentation]             Testing: Cancel the Customer Adding Process By Clicking CANCEL Button
    [Tags]                      1007 Smoke Customer Add
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Abort the customer adding Session
    CrmApp.Sign Out

User Login And Navigate To HomePage From AddCustomer Page By cliking Logo TextLink
     [Documentation]            User Login And Navigate To HomePage From AddCustomer Page
     [Tags]                     1015 Smoke Navigation
     CrmApp.Go To "Home" Page
     CrmApp.Navigating To HomePage From AddCustomer Page By Clicking Logo TextLink    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
