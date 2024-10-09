*** Settings ***




*** Test Cases ***
ForLoop1

        FOR     ${i}    IN RANGE     1     10
           log to console     ${i}
        END


ForLoop2
        FOR    ${i}     IN     1 2 3 4 5 6 7 8             #if you give single space it will print in one line, if double space it will print in next line
        log to console     ${i}
        END

ForLoop3
        @{items}     create list      1     2      3     4    5             #creating list items
        FOR     ${i}     IN     @{items}          #read from the list
        log to console     ${i}
        END


ForLoop_Strings1
        FOR    ${i}     IN     John     David       Smith       Scott
        log to console     ${i}
        END


ForLoops_Strings2
        @{nameList}     create list     John     David       Smith       Scott
        FOR     ${i}     IN     @{nameList}
        log to console     ${i}
        END

ForLoop_with_Exit
        @{items}        create list     1   2   3   4   5
        FOR     ${i}     IN    @{items}
        log to console    ${i}
        exit for loop if    ${i}==3
        END
