*** Settings ***
#Documentation   To validate the documentation form
Library     SeleniumLibrary
Library     Collections
Test Setup      Open browser with morgage payment information       #Begining of testcase
Resource    resource.robot                                          #resource file likr the interface file to avoid repeating
Test Teardown   Close The Browser                                       #End of testcase

*** Variable ***
${Login_error_msg}      css:.alert-danger
${Login_success_msg}    css:.nav-link

*** Test Cases ***
#Validate Unsuccessful Login
#    Fill the login form     ${username}     ${inc_password}
#    Wait untill it checks and displays message      ${Login_error_msg}
#    Verify error message is correct

Validate Successful Login
    Fill the login form     ${username}     ${corr_password}
    Wait untill it checks and displays message      ${Login_success_msg}
    Verify error message is correct login
    Verify card title on Shop Page

*** Keywords ***

Fill the login form
    [arguments]     ${username}     ${password}
    input text      xpath://input[@id='username']   ${username}
    input password      xpath://input[@id='password']   ${password}
    select checkbox     xpath://input[@id='terms']
    click button    xpath://input[@id='signInBtn']

#Fill the login form corr
#    input text      xpath://input[@id='username']   ${username}
#    input password      xpath://input[@id='password']   ${password}
#    select checkbox     xpath://input[@id='terms']
#    click button    xpath://input[@id='signInBtn']


Wait untill it checks and displays message
    [arguments]         ${message}
    Wait Until Element is Visible       ${message}

Verify error message is correct
    ${result} =     get text    ${Login_error_msg}
    current frame should contain    ${result}     Incorrect username/password.
    sleep   5

Verify error message is correct login
    ${result} =     get text    ${Login_success_msg}
    current frame should contain     ${result}    iphone X
    sleep   5

Verify card title on Shop Page
    @{Exp_List} =   Create List     iphone X    Samsung Note 8      Nokia Edge      Blackberry
    @{Act_List} =   get webelements     css:.card-title
    @{compare_list} =   Create List
    FOR     ${d}    IN      @{Act_List}
        Log     ${d.text}
        Append To List  ${compare_list}  ${d.text}
    END
    lists should be equal     ${Exp_List}     ${compare_list}