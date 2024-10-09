*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
NavigationCommands

        open browser        https://google.com/     chrome
        ${loc}=     get location          #get the url of the browser
        log to console    ${loc}

        go to       https://bing.com
        ${loc}=     get location          #get the url of the browser
        log to console    ${loc}

        go back                #go back to previous page
        ${loc}=     get location          #get the url of the browser
        log to console    ${loc}