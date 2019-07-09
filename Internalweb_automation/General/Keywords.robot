*** Settings ***
Documentation   General Keywords for Cohive Website
Resource        ${EXECDIR}/General/Data.robot
Resource        ${EXECDIR}/General/Library.robot

*** Keywords ***
Open Cohive Website
    ${url}=     Convert To String       ${url.${environment}}
    Open Browser                         ${url}          ${browser}
    Delete All Cookies
    Set Selenium Speed                   ${setSeleniumSpeed}
    # Set Window Size                      2560  1440
    # Maximize Browser Window

Close Browser
    Delete All Cookies
    [Teardown]  Close All Browsers