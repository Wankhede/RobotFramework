*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Test Setup      Opening my Browser1
Test Teardown   Closing my Browser
Resource        resources.robot

*** Test Case ***
Validate Child window functionality
    Select the link of child window
    Verify the user is switched to child window
    Grab the email id from the child window
    Switch to parent window and enter the email id


*** Variables ***


*** Keywords ***
Select the link of child window
    click element       xpath://a[@class='blinkingText']
    sleep       5

Verify the user is switched to child window
    switch window   NEW
    current frame should contain   Academy
    sleep   10

Grab the email id from the child window
    ${email}=    get text    css:.red
    @{email_String}=   split string    ${email}    at
    ${text_String}=   get from list   ${email_String}   1
    Log     ${text_String}
    set global variable     ${text_String}

Switch to parent window and enter the email id
    switch window   MAIN
    input text      username    ${text_String}
    log     ${text_String}
    input password      password    learnging
    select checkbox     xpath://input[@id='terms']
    click button    signInBtn
    wait until element is visible   css:.alert-danger

