*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot



*** Variables ***
${browser}      chrome
${url}          https://demo.guru99.com/test/newtours/
${username}     tutorial
${password}     tutorial


*** Test Cases ***
LoginTest
    Open Browser     ${url}      ${browser}
    Enter Username      ${username}
    Enter Password      ${password}
    Click submit Button
    Verify successful login
    Close Browser
