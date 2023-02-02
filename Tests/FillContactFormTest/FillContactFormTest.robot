*** Settings ***
Documentation    Fill contact form for Triple Point

Resource    ../../Resources/CommonFunctionalities.robot
Resource    ../../Resources/PageObjects/HomePage/ContactForm.robot
Variables    ../../Resources/WebElements.py

Test Setup    CommonFunctionalities.Start Test Case    ${url}    ${browser}
Test Teardown   CommonFunctionalities.End Test Case
*** Variables ***
${url}    https://www.triplepoint.co.uk/contact-us/4/
${browser}    Chrome
*** Keywords ***
Run KeyWord untill success
    [arguments]    ${KW}    ${KWARGS}
    wait until keyword succeeds    5s    1s    ${KW}    ${KWARGS}

Accept policy buttons
    click element    ${InitialWindowPopupAcceptBtn}
    sleep    1s
    wait until page contains element    ${AcceptCookiesBtn}
    scroll element into view     ${AcceptCookiesBtn}
    Run KeyWord untill success    click element    ${AcceptCookiesBtn}
    sleep    3s

*** Test Cases ***
Fill contact form for Triple Point
    Accept policy buttons
    scroll element into view    id:contact
    ContactForm.Select subject of interests
    ContactForm.Select contact method
    ContactForm.Complete input fields
    ContactForm.Confirm privacy policy
    log    Test should pass
#    ContactForm.Submit form
#    ContactForm.Verify if form was submitted
    sleep    2s
#Some chnage
#Some change 3



