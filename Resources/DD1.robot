*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
Suite Setup     Opening my Browser
Suite Teardown  Closing my Browser
Test Template  Invalid login


*** Test Cases ***
[arguments]         ${username}                ${password}
    ryt user wrg pass       admin@yourstore.com     admmm
    wrg user ryt pass       admin@yoursrore.com     admin
    ryt user empty pass     admin@yourstore.com     ${EMPTY}
    empty user ryt pass     ${EMPTY}                admin
    wrg user wrg pass       admin@yoursrore.com     admmm


*** Keywords ***
INVALID LOGIN
[Arguments]             ${username}     ${password}
Opening my Browser
Inputing Username       ${username}
Inputing Password       ${password}
Click login button
Error message should be visible
