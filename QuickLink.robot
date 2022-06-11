*** Settings ***
Documentation   Testing Terveystalo Appointment Booking Application in Robot Framework
Library  SeleniumLibrary
Library  AutoItLibrary
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

three_ClickQuickLinkCoronavirusVaccine
    scrollvertically_Quicklink
    sleep   5s
    QuickLinkCoronavirusVaccine
    InformedByMunicipality
    clickContinue
    SelectLocation
    BookingThirdDose

four_clickMenubutton
    clickLeftMenuButton
    sleep   5s
    clickOmaTerveys
    sleep   5s


clicklogin
     OmaClickLogin
#eight_closebrowser
 #   close browser


*** Keywords ***