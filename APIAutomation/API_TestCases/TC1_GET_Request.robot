*** Settings ***
Library    RequestsLibrary


*** Variables ***
${base_url}    http://restapi.demoqa.com/
${city}     Delhi


*** Test Cases ***
Get_weatherInfo
        create session    mysession     ${base_url}
        ${response} =   get request     mysession       /utilities/weather/city/${city}

        log to console    ${response.status_code}
        log to console      ${response.content}
        log to console     ${response.headers}



*** Keywords ***
