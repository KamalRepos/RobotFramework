*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegistrationTest

    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    set selenium timeout        10seconds
    wait until page contains    Register                #default timeout is 5 seconds

    select radio button    Gender   M
    input text      name:FirstName      Kamal
    input text      name:LastName       Moorthy
    input text      name:Email          abc@gmail.com
    input text      name:Password       12345
    input text      name:ConfirmPassword        12345

