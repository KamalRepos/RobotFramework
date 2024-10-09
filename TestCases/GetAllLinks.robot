*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Get_All_Links

        open browser      https://demowebshop.tricentis.com/register      chrome
        maximize browser window
        ${AllLinksCount}=   get element count    xpath://a
        log to console        ${AllLinksCount}

        @{LinkItems}     create list

        FOR     ${i}     IN RANGE     1     ${AllLinksCount}
        ${linkTest}=    get text    xpath:(//a)[${i}]
        log to console    ${linkTest}
        END

