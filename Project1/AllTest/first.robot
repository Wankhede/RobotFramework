*** Settings ***
#Documentation   To validate the documentation form
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Variable ***
${Login_error_msg}      css:.alert-danger

*** Test Cases ***
Validate unsuccessful login
    Open browser with morgage payment information
    Fill the login form
    Wait untill it checks and displays error message
    Verify error message is correct


*** Keywords ***
Open browser with morgage payment information
    Open Browser    https://www.rahulshettyacademy.com/loginpagePractise/   chrome
    MAXIMIZE BROWSER WINDOW

Fill the login form
    input text      xpath://input[@id='username']   rahulshettyacademy
    input password      xpath://input[@id='password']   learningg
    select checkbox     xpath://input[@id='terms']
    click button    xpath://input[@id='signInBtn']

Wait untill it checks and displays error message
    Wait Until Element is Visible       ${Login_error_msg}

Verify error message is correct
    ${result} =     get text    css:.alert-danger
    current frame should contain    ${result}     Incorrect username/password.
    sleep   5
