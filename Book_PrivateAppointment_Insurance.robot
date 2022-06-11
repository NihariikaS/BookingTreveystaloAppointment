*** Settings ***
Documentation   Testing Terveystalo Appointment Booking Application in Robot Framework
Library  SeleniumLibrary
Resource  ../KeywordDefinitionFiles/common.robot
Resource  ../KeywordDefinitionFiles/BookingOptions.robot
Variables   ../Locators/TT_Locators.py
Suite Setup     log to console      opening browser
#Suite Teardown  log to console      closing browser


*** Variables ***
${browser}     chrome
${url}     https://www.terveystalo.com/en


*** Test Cases ***
Launch Webpage in Chrome browser
    Launch_Browser_Webpage

one_closecookiebanner
    closecookiebanner
two_navigatetoappointmentbooking
    navigatetoappointmentbooking
three_bookforyourselfbutton
    bookforyourselfbutton

four_Bookingprivateappointment_Insurance
    Bookingprivateappointment_Insurance

five_clickonspecialist
   clickonspecialist


six_scrollvertically
    scrollvertically_booking
seven_clicklogin
     clickloginbutton_booking
#eight_closebrowser
 #   close browser


*** Keywords ***