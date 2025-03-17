*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library    String
Library    BuiltIn



*** Variables ***
${CUSTOMERS_HEADER_LABEL} =                     Our Happy Customers
${CUSTOMERS_ADD_CUSTOMER_LINK} =                id=new-customer
${CUSTOMERS_CUSTOMER_SUCCESS_LABEL} =           Success! New customer added.
#${USER_PROFILE_VIEW_ICON} =                    //*[@id="customers"]/tbody/tr[1]/td[5]/a[1]
${USER_VIEW_ICON_LOCATOR} =                     //*[@id="customers"]/tbody/tr/td[5]/a[1]
${CUSTOMERS_PAGINATION_NEXT_BUTTON} =           Next
${CUSTOMERS_PAGINATION_NUMBERS_BUTTON} =        3

*** Keywords ***
Verify Page Loaded
    wait until page contains                    ${CUSTOMERS_HEADER_LABEL}

Click Add Customer Link
    click link                                  ${CUSTOMERS_ADD_CUSTOMER_LINK}

Verify Customer Added Successfully
    wait until page contains                    ${CUSTOMERS_CUSTOMER_SUCCESS_LABEL}

Click Random User Profile View Icon
    ${all_icons}=       Get WebElements         ${USER_VIEW_ICON_LOCATOR}
    ${total}=           Get Length              ${all_icons}
    ${random_index}=    Evaluate    random.randint(0, ${total}-1)    modules=random
    Log                 Clicking user icon at index: ${random_index}
    ${random_icon}=     Get From List           ${all_icons}    ${random_index}
    Click Element       ${random_icon}

Click Pagination "NEXT" Button
    click link         ${CUSTOMERS_PAGINATION_NEXT_BUTTON}

Click Number Button Of Pagination
     click link        ${CUSTOMERS_PAGINATION_NUMBERS_BUTTON}