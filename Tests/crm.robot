*** Settings ***
Documentation       This is some basic information about whole suite
Resource            ../Resources/common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

#Run the test
#robot -d results tests/crm.robot

*** Variables ***
#Defining default browser and credentials value
${BROWSER} =                            chrome
${URL} =                                https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =                  admin@robotframework.com
${VALID_LOGIN_PASSWORD} =               _CoffeeCup852!
${INVALID_EMAIL} =                      JamesBond_.com
${EMAIL_VALIDATION_MESSAGE} =           Please include an '@' in the email address. '${INVALID_EMAIL}' is missing an '@'.
${EMPTY_FIELD_VALIDATION_MESSAGE} =     Please fill out this field.

*** Test Cases ***
#Home page should load
#    [Documentation]             Testing: Home page should load
#    [Tags]                      1001 Smoke Home
#    CrmApp.Go To "Home" Page
#
#Should be able to Login with valid credentials
#    [Documentation]             Testing: Should be able to Login with valid credentials
#    [Tags]                      1002 Smoke Login
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#
#Should be able to Log Out
#    [Documentation]             Testing: Should be able to log out
#    [Tags]                      1004 Smoke Login
#    CrmApp.Go to "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    CrmApp.Sign Out
#
#Should be able to add new customer
#    [Documentation]             Testing: Should be able to add new customer successfully
#    [Tags]                      1006 Smoke Contacts
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    CrmApp.Add New Customer
#    CrmApp.Sign Out
#
#Cancel the Customer Adding Process By Clicking CANCEL Button
#    [Documentation]             Testing: Cancel the Customer Adding Process By Clicking CANCEL Button
#    [Tags]                      1007 Smoke Customer Add
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    CrmApp.Abort the customer adding Session
#    CrmApp.Sign Out
#
#CustomerProfile Page should Load
#    [Documentation]             Testing: CustomerProfile Page should Load
#    [Tags]                      1008 Smoke Contacts
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    CrmApp.Go To CustomerProfile Page
#    CrmApp.Sign Out
#
#Go Through All Customers by using Clicking NEXT Button
#    [Documentation]             Testing: Go Through All Customers by using Clicking NEXT Button
#    [Tags]                      1009 Smoke Contacts
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    Customers.Click Pagination "NEXT" Button
#    CrmApp.Sign Out
#
#Go Through All Customers by using Number Button Pagination
#    [Documentation]             Testing: Go Through All Customers by using Number Button Pagination
#    [Tags]                      1010 Smoke Contacts
#    CrmApp.Go To "Home" Page
#    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    Customers.Click Number Button Of Pagination
#    CrmApp.Sign Out
#
#Home page GRIDS Contenst load Properly
#    [Documentation]             Testing: Home page GRIDS Contenst load Properly
#    [Tags]                      1011 Smoke Home
#    CrmApp.Verify Home Page GRID Contents Loading
#
#User Login And Navigate To HomePage From HomePage By cliking Logo TextLink
#    [Documentation]             User Login And Navigate To HomePage From HomePage By cliking Logo TextLink
#    [Tags]                      1012 Smoke Home
#    CrmApp.Navigating To HomePage From LoginPage By Clicking Logo TextLink
#
#User Login And Navigate To HomePage From CustomerPage By cliking Logo TextLink
#    [Documentation]             User Login And Navigate To HomePage From CustomerPage By cliking Logo TextLink
#    [Tags]                      1013 Smoke Home
#    CrmApp.Go To "Home" Page
#    CrmApp.Navigating To HomePage From All Customers By Clicking Logo TextLink      ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#
#User Login And Navigate To HomePage From CustomerProfile By cliking Logo TextLink
#    [Documentation]             User Login And Navigate To HomePage From CustomerProfile
#    [Tags]                      1014 Smoke Navigation
#    CrmApp.Go To "Home" Page
#    CrmApp.Navigating To HomePage From CustomerPage By Clicking Logo TextLink    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#
#User Login And Navigate To HomePage From AddCustomer Page By cliking Logo TextLink
#     [Documentation]             User Login And Navigate To HomePage From AddCustomer Page
#     [Tags]                      1015 Smoke Navigation
#     CrmApp.Go To "Home" Page
#     CrmApp.Navigating To HomePage From AddCustomer Page By Clicking Logo TextLink    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
#
#Validate Email Format and verify the validation message
#    [Documentation]             Testing: Validate Email Format and verify the validation message
#    [Tags]                      1016 Smoke Login
#    CrmApp.Go To "Home" Page
#    CrmApp.Enter Invalid Email Format         ${INVALID_EMAIL}    ${VALID_LOGIN_PASSWORD}
#    CrmApp.Verify Email Validation Message    ${EMAIL_VALIDATION_MESSAGE}

#Validate Password Field Is Empty and verify the validation message
#    [Documentation]             Testing: Validate Password Field Is Empty and verify the validation message
#    [Tags]                      1017 Smoke Login
#    CrmApp.Go To "Home" Page
#    CrmApp.Enter Empty Password Field           ${VALID_LOGIN_EMAIL}
#    CrmApp.Verify Password Validation Message   ${EMPTY_FIELD_VALIDATION_MESSAGE}

Validate Email and Password Fields Are Empty and verify the validation message
    [Documentation]             Testing: Validate Email and Password Fields Are Empty and verify the validation message
    [Tags]                      1018 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Verify Validation Message When Email and Password Fields Are Empty    ${EMPTY_FIELD_VALIDATION_MESSAGE}    ${EMPTY_FIELD_VALIDATION_MESSAGE}



