*** Settings ***

Library  SeleniumLibrary
Library  Collections


*** Variables ***

${url1}  https://www.youtube.com
${url2}  https://www.wikipedia.org/
${url3}  https://www.google.co.in/
${url0}     https://testautomationpractice.blogspot.com/
${url5}     https://imghub.net/
${write}    I am writing this to see the diff
${url4}  https://docs.google.com/forms/d/15KM3BXeX5tTF7cTEb3NpGjKg90K_RergbVexXXFIn8A/edit
${browser}  Chrome
${url7}     https://www.rahulshettyacademy.com/loginpagePractise/

*** Test Cases ***

Google
    RahulSheety

*** Keywords ***

RahulSheety
    open browser    ${url7}     ${browser}
    maximize browser window
    sleep   5
    input text      id:username     rahulshettyacademy
    input password      id:password     learning
    click element       css:input[value='user']
    select from list by index   xpath://select[@class='form-control']   2
    wait until element is visible   okayBtn
    click element   okayBtn
    select checkbox     xpath://input[@id='terms']
    click button    signInBtn
    sleep   15
    @{Act_list} =   create list
    @{ExpList} =  create list     iphone X    	Samsung Note 8      Nokia Edge      Blackberry
    @{elements}     get webelements     css:.card-title
    FOR     ${d}    IN      @{elements}
            Append to List   ${ActList}    ${d.text}
    END
    lists should be equal   ${Act_list}     ${ExpList}
    select item from cart   Blackberry
    click element   xpath://a[@class='nav-link btn btn-primary']
    sleep   5
    close browser

select item from cart
    [arguments]     ${carditem}
    click element   xpath://app-card[4]//div[1]//div[2]//button[1]
    sleep   5

OpenYoutube
    open browser        ${url1}     ${browser}
    Maximize Browser Window
    sleep   5
    input text      xpath://input[@id='search']     Bruno Mars
    click element       xpath://button[@id='search-icon-legacy']//yt-icon[@class='style-scope ytd-searchbox']
    sleep   5
    close browser

TableValidation
    opening browser     ${url0}     ${browser}
    maximize browser window
    sleep   5
    ${rows}     get element count   xpath://table[@name='BookName']/tbody/tr
    ${columns}      get element count   xpath://table[@name='Bookname']/tbody/tr[1]/th

    log to console      ${rows}
    log to console      ${columns}

practiseform
    ${PageTitle}    opening browser     ${url5}      ${browser}
    Log to console   ${PageTitle}
    sleep   3
    Log to console      ${write}



Addusing
    opening browser
    capture element screenshot      xpath://div[@class='col-sm-12']//img    cup.png
    capture page screenshot     website.png
    sleep   5
    close browser

opening browser
    [Arguments]     ${weburl}      ${webbrowser}
    Open Browser  ${weburl}   ${webbrowser}
    Maximize Browser Window
    sleep  5
    ${title}        get title
    [Return]    ${title}
    close browser

MouseAction
    Open Browser  https://testautomationpractice.blogspot.com/    ${browser}
    Maximize Browser Window
    sleep  5
    double click element    xpath://button[@onclick='myFunction()']
    sleep  5
    handle alert    accept
    #open context menu   xpath://button[@onclick='myFunction()']
    sleep  5
    close browser

DragandDrop
    Open Browser  https://testautomationpractice.blogspot.com/    ${browser}
    Maximize Browser Window
    sleep  5
    drag and drop   xpath://img[@alt='the peaks of high tatras']  xpath://*[@id="trash"]
    drag and drop   xpath://img[@alt='The chalet at the Green mountain lake']   xpath://div[@id='trash']
    sleep  5
    close browser

insideGoogle
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    sleep   10
    Close Browser

insideYoutube
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    sleep   10
    Close Browser

InputBox
    ${speed}    get selenium speed
    Log to console      ${speed}
    Open Browser    ${url1}     ${browser}
    Maximize Browser Window
    Sleep   2
    set selenium speed      3 seconds
    input text      xpath://input[@id='search']         Mango
    Sleep   5
    click Button    xpath://button[@id='search-icon-legacy']
    Sleep   5
    clear element text      xpath://input[@id='search']
    Log to console       ${speed}
    Sleep   5
    Log to console       ${speed}
    input text      xpath://xpath://input[@id='search']     Apotheosis
    Sleep   5
    click Button    xpath://button[@id='search-icon-legacy']
    Close Browser
    Lo

FormFill
    Open Browser    ${url4}     ${browser}
    Maximize Browser Window
    Sleep   5
    input text      xpath://textarea[contains(text(),'Name')]       Alex
    Sleep   5
    Close Browser

TwoBrowser
    Open Browser    ${url1}     ${browser}
    Maximize Browser Window
    Sleep   5
    close window

AlertWindow
    open browser    https://testautomationpractice.blogspot.com/    ${browser}
    Maximize Browser Window
    go to   https://www.flipkart.com
    Sleep   5
    go back
    click button    //button[@onclick='myFunction()']
    Sleep   5
    handle alert    accept
    input text      xpath://input[@id='Wikipedia1_wikipedia-search-input']    Javeen
    click Buttton   //body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[4]/div[2]/div[1]/aside[1]/div[1]/div[1]/div[1]/form[1]/div[1]/span[2]/span[2]/input[1]
    Sleep   5
    close window

ScreenShot
    open browser    https://imghub.net/    ${browser}
    Maximize Browser Window
    capture element screenshot      xpath://div[@class='col-sm-12']//img    cup.png
    capture page screenshot     website.png
    close browser

Scroll
    open browser        https://en.wikipedia.org/wiki/Main_Page     chrome
    Maximize Browser Window
    Sleep  5
    #execute javascript   window.scrollTo(0,1200)
    #scroll element into view    xpath://*[@id="Today's_featured_picture"]
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep   5
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
    Sleep   5
    close window


Monty
    open browser     https://www.bmw.in/en/publicPools/search-results/search-results.html       chrome
    Maximize Browser Window
    Sleep  5
    input text      xpath://input[@id='aems-inputsearch']       maybach
    click button    xpath://*[@id="aems-buttonsearch"]
    Sleep   5
    go to   https://www.f1.com
    Sleep   5
    go back
    close browser

*** Test Cases ***

