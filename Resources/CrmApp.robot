*** Settings ***
Resource    ../Resources/PO/AddCustomers.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/CustomerPage.robot

*** Variables ***


*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded
    Home.Verify Header Paragraph loaded
    Home.Verify Header Sub Paragraph loaded

Verify Home Page GRID Contents Loading
    Home.Navigate To
    Home.Verify GRID Label_1 Loaded
    Home.Verify GRID Label_2 Loaded
    Home.Verify GRID Label_3 Loaded
    Home.Verify GRID Labels Paragraph Loading

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}     ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomers.Verify Page Loaded
    AddCustomers.Add New Customer
    Customers.Verify Customer Added Successfully

Click "Next" Button Of Pagination
    Customers.Verify Page Loaded
    Customers.Click Pagination "NEXT" Button

Click "Number" Button Of Pagination
    Customers.Verify Page Loaded
    Customers.Click Number Button Of Pagination

Abort the customer adding Session
    Customers.Click Add Customer Link
    AddCustomers.Verify Page Loaded
    AddCustomers.Click Cancel Button
    Customers.Verify Page Loaded

Go To CustomerProfile Page
    Customers.Verify Page Loaded
    Customers.Click Random User Profile View Icon
    CustomerPage.Verify Page Loaded
    CustomerPage.Click "Back to Customers" Link

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded

Navigating To HomePage From LoginPage By Clicking Logo TextLink
    Home.Navigate To
    Home.Verify Page Loaded
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Clicking Logo TextLink From TopNav
    Home.Verify Page Loaded

Navigating To HomePage From All Customers By Clicking Logo TextLink
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}     ${Password}
    Customers.Verify Page Loaded
    Customers.Clicking Logo TextLink From TopNav
    Home.Verify Page Loaded

Navigating To HomePage From CustomerPage By Clicking Logo TextLink
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}     ${Password}
    Customers.Verify Page Loaded
    Customers.Click Random User Profile View Icon
    CustomerPage.Verify Page Loaded
    CustomerPage.Clicking Logo TextLink From TopNav
    Home.Verify Page Loaded

Navigating To HomePage From AddCustomer Page By Clicking Logo TextLink
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials    ${Email}     ${Password}
    Customers.Verify Page Loaded
    Customers.Click Add Customer Link
    AddCustomers.Verify Page Loaded
    AddCustomers.Clicking Logo TextLink From TopNav
    Home.Verify Page Loaded

Go To Login Page
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded

Enter Invalid Email Format
    [Arguments]    ${Email}     ${Password}
    SignIn.Fill "Email" Field          ${Email}
    SignIn.Fill "Password" Field       ${Password}
    SignIn.Click "remember" CheckBox
    SignIn.Click "Submit" Button

Verify Email Validation Message
    [Arguments]    ${ExpectedMessage}
    SignIn.Verify Email Validation Message    ${ExpectedMessage}
