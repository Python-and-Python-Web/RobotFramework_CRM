*** Settings ***
Documentation       LoginPage Testing Scenarios
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
Go Through All Customers by using Clicking NEXT Button
    [Documentation]             Testing: Go Through All Customers by using Clicking NEXT Button
    [Tags]                      1009 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Customers.Click Pagination "NEXT" Button
    CrmApp.Sign Out

Go Through All Customers by using Number Button Pagination
    [Documentation]             Testing: Go Through All Customers by using Number Button Pagination
    [Tags]                      1010 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Customers.Click Number Button Of Pagination
    CrmApp.Sign Out

User Login And Navigate To HomePage From CustomerPage By cliking Logo TextLink
    [Documentation]             User Login And Navigate To HomePage From CustomerPage By cliking Logo TextLink
    [Tags]                      1013 Smoke Home
    CrmApp.Go To "Home" Page
    CrmApp.Navigating To HomePage From All Customers By Clicking Logo TextLink      ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}