*** Settings ***
Library  SeleniumLibrary
Variables   ../Locators/TT_Locators.py



*** Keywords ***

Launch_Browser_Webpage
    open browser    ${url}   ${browser}
    maximize browser window

navigatetoappointmentbooking
     click element       //a[@class='btn btn--anim btn--primary btn--arrow flex-grow-1 flex-md-grow-0']

closecookiebanner
     select frame       //*[@id="st-consent-banner"]
     click element      //button[@class='s1bvzuw6 w1tvjl40 b16l0z89']
     unselect Frame

scrollvertically_booking
    execute javascript  window.scrollTo(0,500)
    sleep   5s

scrollvertically_Quicklink
    execute javascript  window.scrollTo(0,400)
    sleep   5s

clickloginbutton
    Click Button    Log in

OmaClickLogin
    Click element    //*[@class='login-menu hidden-print']

clickLeftMenuButton
    click button    Menu

clickOmaTerveys
    click element   //*[@id="ds-main-menu-oma-terveys"]
