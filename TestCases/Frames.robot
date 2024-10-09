*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FrameTesting

    open browser    https://testautomationpractice.blogspot.com/    chrome

    select frame    frame-one796456169         #frame id
    input text    RESULT_TextField-0    Kamal
    sleep   3
    unselect frame

    select frame    frame-one796456169              #frame id     for different frame
    input text    RESULT_TextField-0    Yuva
    sleep   3
    unselect frame

    select frame    frame-one796456169              #frame id     for different frame
    input text    RESULT_TextField-0    Moni
    sleep   3
    unselect frame