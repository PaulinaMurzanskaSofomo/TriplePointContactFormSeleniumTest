*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.triplepoint.co.uk/contact-us/4/
${browser}    Chrome

*** Keywords ***
Start Test Case
    open browser    ${url}    ${browser}
    maximize browser window
    sleep    1s

End Test Case
    close browser

