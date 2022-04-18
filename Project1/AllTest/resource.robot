*** Settings ***

Library     SeleniumLibrary

*** Variable ***

${username}         rahulshettyacademy
${inc_password}     learning123
${corr_password}         learning

*** Keywords ***

Open browser with morgage payment information
    Open Browser    https://www.rahulshettyacademy.com/loginpagePractise/   chrome
    MAXIMIZE BROWSER WINDOW

Close The Browser
    close browser

