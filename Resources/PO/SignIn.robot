*** Settings ***
Library     SeleniumLibrary
Library     Collections

*** Variables ***
${SIGNIN_HEADER_LABEL} =            Login
${SIGNIN_EMAIL_TEXTBOX} =           id=email-id
${SIGNIN_PASSWORD_TEXTBOX} =        id=password
${SIGNIN_SUBMIT_BUTTON} =           id=submit-id
${SIGNIN_REMEMBER_ME_CHECKBOX} =    id=remember
${CLICKING_LOGO_TEXT_LINK} =        Customer Service

*** Keywords ***
Verify Page Loaded
    wait until page contains            ${SIGNIN_HEADER_LABEL}

Login With Valid Credentials
    [Arguments]    ${Email}             ${Password}
    Fill "Email" Field                  ${Email}
    Fill "Password" Field               ${Password}
    Click "remember" CheckBox   # Ensures checkbox is selected before login
    Click "Submit" Button

Fill "Email" Field
    [Arguments]    ${Email}
    input text                          ${SIGNIN_EMAIL_TEXTBOX}         ${Email}

Fill "Password" Field
    [Arguments]    ${Password}
    input text                          ${SIGNIN_PASSWORD_TEXTBOX}     ${Password}

Click "remember" CheckBox
    select checkbox                     ${SIGNIN_REMEMBER_ME_CHECKBOX}

Click "Submit" Button
    click button                        ${SIGNIN_SUBMIT_BUTTON}

Clicking Logo TextLink From TopNav
    click Link                          ${CLICKING_LOGO_TEXT_LINK}

Verify Email Validation Message When Field Is Empty
    [Arguments]    ${ExpectedMessage}
    wait until element is visible       ${SIGNIN_EMAIL_TEXTBOX}
    ${actual_message}=                  execute javascript      return document.getElementById('email-id').validationMessage.trim();
    Should Be Equal                     ${actual_message}       ${ExpectedMessage}

Verify Password Validation Message When Field Is Empty
    [Arguments]    ${ExpectedMessage}
    wait until element is visible       ${SIGNIN_PASSWORD_TEXTBOX}
    ${actual_message}=                  execute javascript      return document.getElementById('password').validationMessage.trim();
    Should Be Equal                     ${actual_message}       ${ExpectedMessage}

Verify Validation Message When Both Fields Are Empty
    [Arguments]    ${EmailMessage}      ${PasswordMessage}
    wait until element is visible       ${SIGNIN_EMAIL_TEXTBOX}
    wait until element is visible       ${SIGNIN_PASSWORD_TEXTBOX}
    Click Submit Button
    ${actual_email_message}=            execute javascript      return document.getElementById('email-id').validationMessage.trim();
    ${actual_password_message}=         execute javascript      return document.getElementById('password').validationMessage.trim();
    Should Be Equal                     ${actual_email_message}       ${EmailMessage}
    Should Be Equal                     ${actual_password_message}    ${PasswordMessage}
