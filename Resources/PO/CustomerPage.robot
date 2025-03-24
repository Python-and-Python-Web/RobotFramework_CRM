*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CUSTOMERS_PROFILE_HEADER_LABEL} =                     User Profile
${BACK_TO_CUSTOMERS_LIST} =                             Back to Customers
${USER_NAME_LOCATOR} =                                  body > div > div > div:nth-child(2) > div.col-sm-2 > h6
${USER_EMAIL_LOCATOR} =                                 body > div > div > div:nth-child(1) > div.col-sm-2 > h6
${CLICKING_LOGO_TEXT_LINK} =                            Customer Service



*** Keywords ***
Verify Page Loaded
    wait until page contains                    ${CUSTOMERS_PROFILE_HEADER_LABEL}

Click "Back to Customers" Link
    click link                                  ${BACK_TO_CUSTOMERS_LIST}

Clicking Logo TextLink From TopNav
    click Link          ${CLICKING_LOGO_TEXT_LINK}