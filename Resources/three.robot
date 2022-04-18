*** Settings ***
Library     SeleniumLibrary
Library     String
#Library     DataDriver      file=res.csv      encoding=utf_8      dialect=unix
Library     Collections
Resource        resources.robot
#Test Setup      Opening my Browser1
Test Template   Validate unsuccessfull Login
Test Teardown   Closing my Browser


*** Variables ***

${Error_message_login}      css:.alert-danger

*** Test Case ***       username            password
Invalid Username        rahil               learning
Invalid Password        rahulshettyacademy  lraningd
Specail Characters      @:[./'              ^%&@&%()

#*** Test Cases ***

# Validate Child window functionality

#Login with user ${username} and password ${password}    xyz     learningg

*** Keywords ***

Validate unsuccessfull Login
    [Arguments]         ${username}     ${password}
    Opening my Browser1
    Fill login form     ${username}     ${password}
    Click login button
    Error message should be visible
    sleep   3

Validate Child window functionality
    Opening my Browser1
    Select the link of child window
    Verify the user is switched to child window
    Grab the email id from the child window
    Switch to parent window and enter the email id


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
    capture page screenshot     screen1.png

Fill login form
    [Arguments]     ${username}     ${password}
    input text      id:username     ${username}
    input password  id:password     ${password}
