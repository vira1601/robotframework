*** Settings ***
Documentation       Keywoard for home menu
Resource            ${EXECDIR}/Element/Home/header.robot
Resource            ${EXECDIR}/Element/Home/body.robot
Resource            ${EXECDIR}/Element/Home/footer.robot

*** Keywords ***
#------------close pop up------------
close pop up promo on home screen
    Click Element               ${close-popup-promo}

click close promo if pop up displayed
    ${promo}    Run Keyword And Return Status  Element Should Be Visible  ${close-popup-promo}
    Run Keyword If  ${promo}        close pop up promo on home screen

#---------------Header----------------
click coliving space button on home screen
    Click Element                   ${coliving_space}

click location menu on header
    Click Element                   ${location_menu}

click plans menu on header
    Click Element                   ${plans_menu}

click space menu on header
    click Element                   ${spaces_menu}

click event menu on header
    Click Element                   ${events_menu}

click about us menu on header
    Click Element                   ${about-us_menu}

click contact us on header
    Click Button                    ${concact-us}

close contact us
    Click Button                    ${close-concact-us}

#----------Body-------------
select location on body home
    Click Element                   ${location_selection}
    Select From List By Value       ${location_selection}         pos-indonesia
    Click Element                   ${Button_Searc}

click 'explore office solution' on body home
    Scroll Element Into View        ${explore-office-solution}
    Wait Until Element is visible   ${explore-office-solution}     timeout=10s
    Set Focus To Element            ${explore-office-solution}
    Click Element                   ${explore-office-solution}

click 'get your desk' on body home
    Scroll Element Into View        ${get-your-desk}
    Wait Until Element is visible   ${get-your-desk}     timeout=10s
    sleep                           6s
    Set Focus To Element            ${get-your-desk}
    Click Element                   ${get-your-desk}

click 'host an event' on body home
    Scroll Element Into View        ${host-an-event}
    Wait Until Element is visible   ${host-an-event}     timeout=5s
    sleep                           6s
    Set Focus To Element            ${host-an-event}
    Click Element                   ${host-an-event}

