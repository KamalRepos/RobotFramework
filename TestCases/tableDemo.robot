*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TableValidation
        open browser     https://testautomationpractice.blogspot.com/      chrome
        maximize browser window
        ${rowCount}=    get element count    xpath://table[@name="BookTable"]//tbody//tr
        ${ColCount}=     get element count    xpath://table[@name="BookTable"]//tbody//tr//th

        log to console    ${rowCount}
        log to console    ${ColCount}

        ${data}=    get text    xpath://table[@name="BookTable"]//tbody//tr[5]//td[1]
        log to console     ${data}

        #Verify if the table contains "Author" in column 2
        table column should contain    xpath://table[@name="BookTable"]     2       Author

        #Verify in the table if row contains    "Learn JS"
        table row should contain       xpath://table[@name="BookTable"]     4       Learn JS

        #Verify if the table cell contain specific value
        table cell should contain     xpath://table[@name="BookTable"]     5     2      Mukesh

        #Verify Header
        table header should contain     xpath://table[@name="BookTable"]     BookName
