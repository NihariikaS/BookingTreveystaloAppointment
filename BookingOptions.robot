*** Settings ***
Library  SeleniumLibrary
Variables   ../Locators/TT_Locators.py



*** Keywords ***

bookforyourselfbutton
    click element   id:book-for-yourself-btn

Bookingprivateappointment
    click element   //*[@id="book-for-yourself-content"]/div/ul/li[1]

Bookingprivateappointment_Insurance
    click element   //*[@id="book-for-yourself-content"]/div/ul/li[3]/a

clickloginbutton_booking
    sleep   10s
    Click Button    Log in
    #//*[@id="root"]/div/main/div[2]/div[3]/div[2]/div/div/button
    sleep   5s


bookforanotherbutton
    click element   id:book-for-other-btn
    input text      id:main-patient-age         55
    select checkbox     //*[@id="book-for-other-content"]/div/form/div[2]/label/input
    click element       //*[@id="book-for-other-content"]/div/form/button

clickonspecialist
   sleep    5s
   wait until element is visible      //*[starts-with(@id, 'mainResult-')]     15s
    click element       //*[starts-with(@id, 'mainResult-')]
    sleep   10s

#Keywords for Quicklink start----------------------------------
QuickLinkCoronavirusVaccine
    sleep    5s
    click element       //*[@id="root"]/div/main/div[1]/div/ul/li[4]/button/img[1]

InformedByMunicipality
    select checkbox     //*[@id="corona-vaccination-instructed"]/div[2]/label/input
    sleep   5s
clickContinue
    click element       //*[@id="root"]/div/main/div[1]/div/form/button
    sleep   5s
SelectLocation
    input text      id=question-search-     Oulu
    sleep   5s
    click element       //*[@id="root"]/div/main/div[1]/div/ul/li/button

BookingThirdDose
    CLick element      //*[@id="root"]/div/main/div[1]/div/ul/li[2]/button
    sleep   5s
    Click element       //*[@id="root"]/div/main/div[1]/div/div[2]/div/div/button

#Keywords for Quicklink end------------------------------------------

