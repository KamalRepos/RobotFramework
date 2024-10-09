*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
HandlingAlerts
        open browser    https://testautomationpractice.blogspot.com/     chrome
        click element    xpath://*[@id="HTML9"]/div[1]/button[1]

        #close alert window with OK button
        handle alert    accept

        #close alert widnow with Cancel Button
        #handle alert    dismiss

        #Leave the alert window, not action taken
        #handle alert    leave

        #Verify messgae on alert window
        #alert should be present    I am an alert box!

        #Verify messgae on alert window
        #alert should not be present    I am an alert box!

