*** Settings ***
Documentation   Testing Terveystalo Appointment Booking Application in Robot Framework
Library     SeleniumLibrary
Resource  ../KeywordDefinitionFiles/common.robot
Resource  ../KeywordDefinitionFiles/BookingOptions.robot
Variables   ../Locators/TT_Locators.py
Suite Setup     log to console      opening browser
#Suite Teardown  log to console      closing browser


*** Variables ***
${browser}     chrome
${url}     https://www.terveystalo.com/en


*** Test Cases ***
LaunchWebpage
    #create webdriver chrome executable_path="/Users/niharikasrivastava/Downloads/chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
one_closecookiebanner
      closecookiebanner
two_navigatetoappointmentbooking
    navigatetoappointmentbooking

three_bookforanotherbutton
    bookforanotherbutton
five_clickonspecialist
   clickonspecialist
six_scrollvertically
    scrollvertically_booking
seven_clicklogin
    clickloginbutton_booking


*** Keywords ***