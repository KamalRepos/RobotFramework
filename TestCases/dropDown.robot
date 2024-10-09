*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Handling Dropdowns and Listboxes
        open browser    ${url}      ${browser}
        maximize browser window
        set selenium speed    1second

        #select from dropdown list    with 3 different ways
        select from list by label     country       France
        select from list by index     country        6
        select from list by value     country        canada

#Listbox
        select from list by label       colors      Blue
        select from list by label       colors      Yellow



*** Keywords ***
