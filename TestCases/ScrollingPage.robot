*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
ScrollingTest
        open browser     https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
        maximize browser window
        sleep    8
        execute javascript     window.scrollTo(0,2800)
        sleep       2

        #scroll until an element is visible
        scroll element into view    xpath://td[normalize-space()="Russia"]
        sleep    3

        #Scroll till bottom of the page
        execute javascript     window.scrollTo(0,document.body.scrollHeight)
        sleep    5

        #scroll from bottom of the page to top of the page
        execute javascript     window.scrollTo(0, -document.body.scrollHeight)
        sleep   5