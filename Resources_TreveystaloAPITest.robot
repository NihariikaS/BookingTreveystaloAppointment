*** Settings ***
Documentation   Basic API Testing Terveystalo Appointment Booking Application
Library     RequestsLibrary



*** Variables ***
${browser}     chrome
${url}     https://www.terveystalo.com/en
${base_url}     https://vavux.api.terveystalo.com
${base_url1}    https://resources.terveystalo.com/


*** Test Cases ***
GetRequestApiTest
   create session  Get_services    ${base_url}
    ${response}=    get on session     Get_services     /popular-services/
    log to console  ${response.status_code}
    log to console  ${response.content}

GetStatusCode_url1
    create session  Get_sessioncode    ${base_url1}
    ${response}=    get on session     Get_sessioncode  /specialist-images/
    ${response.status_code}


*** Keywords ***

