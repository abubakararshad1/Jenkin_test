*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${WEBSITE_URL}      https://testautomationpractice.blogspot.com/
${BROWSER}          Chrome

*** Keywords ***


*** Test Cases ***
Open the Website
    Open Browser    ${WEBSITE_URL}    ${BROWSER}
    Maximize Browser Window

    Click Element    xpath=//*[@id="alertBtn"]
    Sleep    5s
    Handle Alert        accept
    Sleep    3s
    Close All Browsers





