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
${BROWSER} =                   chrome
${URL} =                       https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =         admin@robotframework.com
${VALID_LOGIN_PASSWORD} =      _CoffeeCup852!

*** Test Cases ***
Home page should load
    [Documentation]             Testing: Home page should load
    [Tags]                      1001 Smoke Home
    CrmApp.Go To "Home" Page

Should be able to Login with valid credentials
    [Documentation]             Testing: Should be able to Login with valid credentials
    [Tags]                      1002 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]             Testing: Should be able to log out
    [Tags]                      1004 Smoke Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

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


CustomerProfile Page should Load
    [Documentation]             Testing: CustomerProfile Page should Load
    [Tags]                      1008 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Go To CustomerProfile Page
    CrmApp.Sign Out

Go Through All Customers by using Clicking NEXT Button
    [Documentation]             Testing: Go Through All Customers by using Clicking NEXT Button
    [Tags]                      1009 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Customers.Click Pagination "NEXT" Button
    CrmApp.Sign Out


Go Through All Customers by using Number Button Pagination
    [Documentation]             Testing: Go Through All Customers by using Number Button Pagination
    [Tags]                      1009 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    Customers.Click Number Button Of Pagination
    CrmApp.Sign Out

Home page GRIDS Contenst load Properly
    [Documentation]             Testing: Home page GRIDS Contenst load Properly
    [Tags]                      1001 Smoke Home
    CrmApp.Verify Home Page GRID Contents Loading

