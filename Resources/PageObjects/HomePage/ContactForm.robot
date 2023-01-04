*** Settings ***
Library    SeleniumLibrary
Variables    ../../WebElements.py

*** Variables ***
&{form_fill_data}    name=John    lastName=Smith    company=World.inc    email=world@world.com    tel=0044 999 888 777    comment=Hello, this is QA Sofomo test


*** Keywords ***
Select subject of interests
    click element    ${SelectInterests}
    sleep    1s
    click element    ${GeneralInquiries}

Select contact method
    click element     ${SelectContactMethod}
    sleep    1s
    click element    ${ContactByEmailMethod}

Complete name field
    input text   ${NameInput}    ${form_fill_data.name}
    sleep    0.5s

Complete last name field
    input text   ${LastNameInput}    ${form_fill_data.lastName}
    sleep    0.5s

Complete company field
    input text   ${CompanyNameInput}    ${form_fill_data.company}
    sleep    0.5s

Complete email field
    input text   ${EmailAddressInput}    ${form_fill_data.email}
    sleep    0.5s

Complete phone field
    input text   ${PhoneInput}    ${form_fill_data.tel}
    sleep    0.5s

Complete comments field
    input text   ${CommentsInput}   ${form_fill_data.comment}
    sleep    0.5s

Confirm privacy policy
   element attribute value should be    ${ConfirmPolicyCheckboxInput}    value
   ...    false
   click element    ${ConfirmPolicyCheckboxBtn}
   element attribute value should be    ${ConfirmPolicyCheckboxInput}    value
   ...    true
   sleep    1s

Submit form
   click element    ${FormSubmitBtn}

Verify if form was submitted
   page should contain element    ${SubmitMessageDiv}
   element should contain    ${SubmitMessage}

