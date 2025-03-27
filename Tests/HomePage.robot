*** Settings ***
Documentation       HomePage Testing Scenarios
Resource            ../Resources/common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =                            chrome
${URL} =                                https://automationplayground.com/crm/

*** Test Cases ***

Home page should load
    [Documentation]             Testing: Home page should load
    [Tags]                      1001 Smoke Home
    CrmApp.Go To "Home" Page


Home page GRIDS Contenst load Properly
    [Documentation]             Testing: Home page GRIDS Contenst load Properly
    [Tags]                      1011 Smoke Home
    CrmApp.Verify Home Page GRID Contents Loading
