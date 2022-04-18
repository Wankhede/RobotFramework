*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      https://admin-demo.nopcommerce.com/
${browser}  Chrome

*** Keywords ***
Opening my Browser
    open browser       https://admin-demo.nopcommerce.com/    chrome
    maximize browser window
    sleep   5

Opening my Browser1
    open browser       https://www.rahulshettyacademy.com/loginpagePractise/    chrome
    maximize browser window


Closing my Browser
    close browser

Logging into URL
    go to ${URL}

Inputing Username
    [Arguments]     ${username}
    input text      id:Email    ${username}

Inputing Password
    [Arguments]     ${password}
    input text      id:Password     ${password}

Click login button
    click button       signInBtn

Click logout button
    click element       Logout

Error message should be visible
    current frame should contain     Incorrect username/password

Dashboard page should be visible
    Page should contain     Dashboard
