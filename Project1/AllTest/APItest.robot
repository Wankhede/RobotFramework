*** Settings ***
Library     Collections
Library     RequestsLibrary


*** Variables ***
${base_url}     http://216.10.245.166/
${Resource_POST}     Library/Addbook.php
${Resource_DELETE}     Library/DeleteBook.php
${Resource_GET}     Library/GetBook.php
${ID}           xyz113311
${Book_name}        Human Behaviourr
${Book_isbn}        11r
${Book_aisle}       aar
${Book_author}      Swap1r


*** Test Cases ***

API Testing
    Playaround with Dictionary
    #Add Book to Library
    Get Book from Library
    #Delete Book from Library


*** Keywords ***

Playaround with Dictionary
    [Tags]      DICTIONARY
    ${data}=    create Dictionary   name=swapnil    course=robot    age=24
    Log     ${data}
    dictionary should contain key   ${data}     name
    Log     ${data}[name]
    ${check}=   get from dictionary     ${data}     name
    should be equal   ${check}    swapnil


Add Book to Library
    [Tags]      ADD
    ${book1}=   create dictionary   name=${Book_name}     isbn=${Book_isbn}    aisle=${Book_aisle}    author=${Book_author}
    ${response}=    POST    ${base_url}${Resource_POST}      json=${book1}   expected_status=200
    status should be    200
    Log     ${response.json()}
    dictionary should contain key   ${response.json()}  ID
    ${ID}=  get from dictionary     ${response.json()}  ID
    set global variable     ${ID}
    Log     ${ID}


Get Book from Library
    [Tags]      SHOW
    ${got_data}=    GET      ${base_url}${Resource_GET}     params=ID=${ID}       expected_status=200
    log     ${got_data}
    #Should be Equal     ${Book_name}    ${got_data.json()}[0][book_name]

Delete Book from Library
    [Tags]      DELETE
    ${del_json}=    create Dictionary       ID=${ID}
    ${delete_req}=   POST      ${base_url}${Resource_DELETE}       json=${del_json}      expected_status=200
    log     ${delete_req}
    status should be    200