*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***

Open my Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text    ${text_login_username}    ${username}


Enter Password
    [Arguments]     ${password}
    Input Text    ${text_login_password}    ${password}

Click submit Button
    Click Button    ${btn_signin_xpath}
    Sleep    5s

Verify successful login
    Page Should Contain    Login Successfully
