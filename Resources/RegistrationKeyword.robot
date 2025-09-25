*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObject/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window



Click Register Button
      Click Element    ${link_register}
      Sleep    10s

Enter firstnam
    [Arguments]     ${firstname}
    Input Text    ${textbox_firstname}    ${firstname}

Enter lastname
        [Arguments]     ${lastname}
        Input Text    ${textbox_firstname}    ${lastname}

Enter phoneno
        [Arguments]     ${phoneno}
        Input Text    ${textbox_phone}    ${phoneno}

Enter email
        [Arguments]     ${email}
        Input Text    ${textbox_email}    ${email}

Enter address
        [Arguments]     ${address}
        Input Text    ${textbox_address}    ${address}

Enter city
        [Arguments]     ${city}
        Input Text    ${textbox_city}    ${city}

Enter state
        [Arguments]     ${state}
        Input Text    ${textbox_state}    ${state}

Enter postalcode
        [Arguments]     ${postalcode}
        Input Text    ${textbox_postal}    ${postalcode}


Pick country
        [Arguments]     ${country}
        Select From List By Value    ${dropdown_country}    ${country}

Enter Username
        [Arguments]     ${username}
        Input Text    ${textbox_username}    ${username}

Enter Password
        [Arguments]     ${password}
        Input Text    ${textbox_password}    ${password}

Enter confirm password
        [Arguments]     ${confirm_password}
        Input Text    ${textbox_confirm_password}    ${confirm_password}

#Click submit Button
#    Click Button    ${btn_submit}
#    Sleep    5s