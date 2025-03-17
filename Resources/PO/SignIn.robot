*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =            Login
${SIGNIN_EMAIL_TEXTBOX} =           id=email-id
${SIGNIN_PASSWORD_TEXTBOX} =        id=password
${SIGNIN_SUBMIT_BUTTON} =           id=submit-id
${SIGNIN_REMEMBER_ME_CHECKBOX} =    id=remember


*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGNIN_HEADER_LABEL}

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Field          ${Email}
    Fill "Password" Field       ${Password}
    Click "remember" CheckBox   # Ensures checkbox is selected before login
    Click "Submit" Button

Fill "Email" Field
    [Arguments]    ${Email}
    input text                  ${SIGNIN_EMAIL_TEXTBOX}         ${Email}

Fill "Password" Field
    [Arguments]    ${Password}
    input text                  ${SIGNIN_PASSWORD_TEXTBOX}     ${Password}

Click "remember" CheckBox
    select checkbox             ${SIGNIN_REMEMBER_ME_CHECKBOX}

Click "Submit" Button
    click button                ${SIGNIN_SUBMIT_BUTTON}



