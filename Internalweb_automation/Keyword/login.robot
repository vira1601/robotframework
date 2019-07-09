*** Settings ***
Documentation   Keyword for Login
Resource        ${EXECDIR}/General/Data.robot
Resource        ${EXECDIR}/General/Keywords.robot
Resource        ${EXECDIR}/Element/login.robot

*** Keywords ***
Input Email in Email Textfield - Login Screen
    [Documentation]     Values for ${input}: VALID or INVALID or EMPTY
    [Arguments]         ${input}
    Run Keyword If      '${input}'=='VALID'     Input Text      ${textfield-email}      ${REGISTERED_MEMBERS_qa.Email}
    ...                 ELSE IF     '${input}'=='INVALID'       Input Text      ${textfield-email}      ${UNREGISTERED_USER.Email}
    ...                 ELSE        Input Text      ${textfield-email}      ${EMPTY}

Input Password in Password Textfield - Login Screen
    [Documentation]     Values for ${input}: VALID or INVALID or EMPTY
    [Arguments]         ${input}
    Run Keyword If      '${input}'=='VALID'     Input Text      ${textfield-password}      ${REGISTERED_MEMBERS_qa.Password}
    ...                 ELSE IF     '${input}'=='INVALID'       Input Text      ${textfield-password}      ${UNREGISTERED_USER.Password}
    ...                 ELSE        Input Text      ${textfield-password}      ${EMPTY}

Click Forgot Password Link - Login Screen
    Click Element                   ${text-forgot_password}

Click Login Button - Login Screen
    Click Element                   ${button-login}