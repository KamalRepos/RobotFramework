*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1seconds

    #select radio button    name    and value
    select radio button    gender     male

    #Selcting checkbox
    select checkbox    xpath://input[@id="sunday"]
    select checkbox    xpath://input[@id="friday"]
    unselect checkbox    xpath://input[@id="sunday"]





*** Keywords ***
