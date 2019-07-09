*** Settings ***
Documentation       Test cases for Login
Resource            ${EXECDIR}/Keyword/login.robot
Resource            ${EXECDIR}/General/Keywords.robot
Default Tags        dev
Test Setup          Run Keywords        Keywords.Open Cohive Website
Test Teardown       Run Keywords        Keywords.Close Browser

*** Variables ***


*** Test Cases ***
Login - Valid
    [Tags]      positive      dev     staging
    Input Email in Email Textfield - Login Screen           VALID
    Input Password in Password Textfield - Login Screen     VALID
    # Click Forgot Password Link - Login Screen
    Click Login Button - Login Screen

Login - Invalid Email
    [Tags]      negative      dev     staging
    Input Email in Email Textfield - Login Screen           INVALID
    Input Password in Password Textfield - Login Screen     VALID
    Click Login Button - Login Screen
    Wait Until Page Contains        ${warning-unmatch_email_pwd}

Login - Invalid Password
    [Tags]      negative      dev     staging
    Input Email in Email Textfield - Login Screen           VALID
    Input Password in Password Textfield - Login Screen     INVALID
    Click Login Button - Login Screen
    Wait Until Page Contains        ${warning-unmatch_email_pwd}