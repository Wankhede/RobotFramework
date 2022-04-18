*** Settings ***
Library     Strings
Library     Collections

*** Keywords ***

Hulk
    @{list1}=   Create List     {a,b,c,d,e,f}
    FOR   ${i}   IN  ${list1}
        Log     ${i}
    END
*** Variables ***


*** Test Cases ***
Googw
    Hulk