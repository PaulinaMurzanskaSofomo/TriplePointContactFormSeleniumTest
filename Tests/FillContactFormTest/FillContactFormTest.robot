*** Settings ***
Documentation    Fill contact form for Triple Point

Resource    ../../Resources/CommonFunctionalities.robot
Resource    ../../Resources/PageObjects/HomePage/ContactForm.robot
Variables    ../../Resources/WebElements.py

Test Setup    CommonFunctionalities.Start Test Case
Test Teardown   CommonFunctionalities.End Test Case

*** Keywords ***
Run KeyWord untill success
    [arguments]    ${KW}    ${KWARGS}
    wait until keyword succeeds    5s    1s    ${KW}    ${KWARGS}

Accept policy buttons
    click element    ${InitialWindowPopupAcceptBtn}
    wait until page contains element    ${AcceptCookiesBtn}
    Run KeyWord untill success    click element    ${AcceptCookiesBtn}
    sleep    2s

*** Test Cases ***
Fill contact form for Triple Point
    Accept policy buttons
    ContactForm.Select subject of interests
    ContactForm.Select contact method
    ContactForm.Complete name field
    ContactForm.Complete last name field
    ContactForm.Complete company field
    ContactForm.Complete email field
    ContactForm.Complete phone field
    ContactForm.Complete comments field
    ContactForm.Confirm privacy policy
    ContactForm.Submit form
    sleep    5s



