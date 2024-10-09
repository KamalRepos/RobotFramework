*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
        open browser     http://demo.automationtesting.in/Windows.html      chrome
        #click element    xpath://*[@id="Tabbed"]/a/button
        #select window    xpath:/html/head/title

        open browser     http://google.com      chrome

        switch browser    1
        ${title1}=  get title
        log to console    ${title1}

        switch browser    2
        ${title2}=  get title
         log to console    ${title2}

