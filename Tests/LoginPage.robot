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
${INVALID_EMAIL} =                      JamesBond_.com
${EMAIL_VALIDATION_MESSAGE} =           Please include an '@' in the email address. '${INVALID_EMAIL}' is missing an '@'.
${EMPTY_FIELD_VALIDATION_MESSAGE} =     Please fill out this field.


*** Test Cases ***
Should be able to Login with valid credentials
    [Documentation]                     Testing: Should be able to Login with valid credentials
    [Tags]                              1002 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]                     Testing: Should be able to log out
    [Tags]                              1004 Smoke Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out


User Navigate To HomePage From LoginPage By cliking Logo TextLink
    [Documentation]                     User Navigate To HomePage From LoginPage By cliking Logo TextLink
    [Tags]                              1012 Smoke Home
    CrmApp.Navigating To HomePage From LoginPage By Clicking Logo TextLink


Validate Email Format and verify the validation message
    [Documentation]                     Testing: Validate Email Format and verify the validation message
    [Tags]                              1016 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Enter Invalid Email Format         ${INVALID_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Verify Email Validation Message    ${EMAIL_VALIDATION_MESSAGE}


Validate Password Field Is Empty and verify the validation message
    [Documentation]                     Testing: Validate Password Field Is Empty and verify the validation message
    [Tags]                              1017 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Enter Empty Password Field           ${VALID_LOGIN_EMAIL}
    CrmApp.Verify Password Validation Message   ${EMPTY_FIELD_VALIDATION_MESSAGE}


Validate Email and Password Fields Are Empty and verify the validation message
    [Documentation]                     Testing: Validate Email and Password Fields Are Empty and verify the validation message
    [Tags]                              1018 Smoke Login
    CrmApp.Go To "Home" Page
    CrmApp.Verify Validation Message When Email and Password Fields Are Empty    ${EMPTY_FIELD_VALIDATION_MESSAGE}    ${EMPTY_FIELD_VALIDATION_MESSAGE}


