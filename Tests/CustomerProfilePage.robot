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

CustomerProfile Page should Load
    [Documentation]             Testing: CustomerProfile Page should Load
    [Tags]                      1008 Smoke Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Go To CustomerProfile Page
    CrmApp.Sign Out

User Login And Navigate To HomePage From CustomerProfile By cliking Logo TextLink
    [Documentation]             User Login And Navigate To HomePage From CustomerProfile
    [Tags]                      1014 Smoke Navigation
    CrmApp.Go To "Home" Page
    CrmApp.Navigating To HomePage From CustomerPage By Clicking Logo TextLink    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}