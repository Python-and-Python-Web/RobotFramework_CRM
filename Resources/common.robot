*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
  #Initialize Selenium
    Set selenium speed          .25s
    Set selenium timeout        10s                             #HomePage load
    open browser                about:blank     ${BROWSER}      #Launhing website in chrome browser

    #resize browser window for recording
    set window position         x=341    y=169                  #In which size mode website launh
    set window size             width=1500    height=1090       #Tests will execute with mentioned window sizw


End Web Test
    Close all browsers                                           #After all the tests executed, All browsers should close