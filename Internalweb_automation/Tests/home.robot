*** Settings ***
Documentation   Testcase for dipslay home
Resource        ${EXECDIR}/Keyword/login.robot
Resource        ${EXECDIR}/General/Keywords.robot
Resource        ${EXECDIR}/Keyword/home.robot
Test Setup          Run Keywords        Keywords.Open Cohive Website
Test Teardown       Run Keywords        Keywords.Close Browser

*** Test Cases ***
#--------------HEADER-----------------
open 'coliving space' when click 'coliving space' button in header
    [Tags]      
    click close promo if pop up displayed
    sleep       3s
    click coliving space button on home screen
    sleep       6s

open 'location' screen when click location menu on header
    [Tags]      
    click close promo if pop up displayed
    click location menu on header
    sleep       6s

open 'plans' screen when click plans menu on header
    [Tags]      
    click close promo if pop up displayed
    click plans menu on header
    sleep       6s

open 'spaces' screen when click spaces menu on header
    [Tags]      
    click close promo if pop up displayed
    click space menu on header
    sleep       6s

open 'event' screen when click event menu on header
    [Tags]      
    click close promo if pop up displayed
    click event menu on header
    sleep       6s

open 'about us' screen when click about us menu on header
    [Tags]      
    click close promo if pop up displayed
    click about us menu on header
    sleep       6s

open 'contact us' screen when click about us menu on header
    [Tags]      
    click close promo if pop up displayed
    click contact us on header
    sleep       3s
    close contact us
    sleep       6s

#----------------BODY----------------------
Select location on body home
    [Tags]      
    click close promo if pop up displayed
    select location on body home   
    sleep       6s

Open 'Explore Office Solution' on body home
    [Tags]      
    click close promo if pop up displayed
    click 'explore office solution' on body home
    sleep       3s

Open 'get your desk' on body home
    [Tags]      
    click close promo if pop up displayed
    click 'get your desk' on body home
    sleep       3s

Open 'host an event' on body home
    [Tags]      this
    click close promo if pop up displayed
    click 'host an event' on body home
    sleep       3s