*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MouseActions
    open browser        http://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window

    #to right click on item
    open context menu       xpath://span[@class="context-menu-one btn btn-neutral"]
    sleep    2

    #double click action
    open browser        https://testautomationpractice.blogspot.com/       chrome
    double click element      xpath://button[normalize-space()="Copy Text"]
    sleep     2

    #drag and drop
    open browser    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html      chrome
    maximize browser window
    drag and drop    id:box6     id:box106
    sleep   2


    close all browsers