*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeyword.robot

*** Variables ***
${browser}      chrome
${url}          https://demo.guru99.com/test/newtours/
${firstname}     abubakar
${lastname}      arshad
${phoneno}       03234010255
${email}         abubakar.arshad1@gmail.com
${address}       123 house no
${city}          lahore
${state}         punjab
${postalcode}    54570
${country}       UGANDA
${username}      12345
${password}      12345
${confirmpassword}  12345

*** Test Cases ***
RegistrationTest
    Open my Browser     ${url}      ${browser}
    Click Register Button
    Enter firstnam  ${firstname}
    Enter lastname   ${lastname}
    Enter phoneno    ${phoneno}
    Enter email      ${email}
    Enter address    ${address}
    Enter city    ${city}
    Enter postalcode    ${postalcode}
    Pick country    ${country}
    Sleep    5s
    Close Browser
