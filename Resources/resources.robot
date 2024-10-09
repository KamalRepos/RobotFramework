*** Settings ***
Library    SeleniumLibrary




*** Keywords ***
launchBrowser
        [Arguments]     ${appurl}   ${appbrowser}
        open browser     ${appurl}     ${appbrowser}
        maximize browser window
        ${title}=   get title
        RETURN     ${title}          #returning a value to calling function

ClickRegister
        click link      //a[normalize-space()="Register"]


EnterCusDetails
        select radio button    Gender   M
        input text      name:FirstName      Kamal
        input text      name:LastName       Moorthy
        input text      name:Email          abc@gmail.com
        input text      name:Password       12345678
        input text      name:ConfirmPassword        12345678