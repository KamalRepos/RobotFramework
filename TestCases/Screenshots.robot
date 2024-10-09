*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
CaptureScreenshotDemo

        open browser        https://opensource-demo.orangehrmlive.com/      chrome
        maximize browser window

        #input text    xpath://input[@placeholder="Username"]     Kamal

        capture element screenshot    xpath://img[@alt="company-branding"]      C:\Users\kamal\Documents\Downloads\logo.png
        capture page screenshot     C:\Users\kamal\Documents\Downloads\fullpage.png
