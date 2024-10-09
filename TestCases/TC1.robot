*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/
${usernmae}     kamal.moorthy1@gmail.com
${pwd}      Kamal123#


*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    click link    xpath://a[normalize-space()="Log in"]
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
        input text    xpath://input[@id="Email"]    ${usernmae}
        input password    xpath://input[@id="Password"]     ${pwd}
        click button    xpath://input[@value="Log in"]