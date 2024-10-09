*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/resources.robot

*** Variables ***
${url}      https://demowebshop.tricentis.com/
${browser}      chrome

*** Test Cases ***
TC1
        #${pageTitle}=    launchBrowser    ${url}     ${browser}          //This function is passing 2 paramters and getting pagetitle
        launchBrowser    ${url}     ${browser}
        ClickRegister
        EnterCusDetails



