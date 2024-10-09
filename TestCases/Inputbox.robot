*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    https://demowebshop.tricentis.com/


*** Test Cases ***
TestingInputBox
    open browser    ${url}      ${browser}
    maximize browser window
    title should be    Demo Web Shop
    click link    xpath://a[normalize-space()="Log in"]
    ${"email_txt"}      set variable    id=Email

    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}

    input text    ${"email_txt"}    kamal.moorthy1@gmail.com
    sleep    2
    clear element text    ${"email_txt"}
    sleep    3
    close browser



*** Keywords ***
