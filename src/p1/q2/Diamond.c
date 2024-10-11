code Diamond
function main ()
    var n : int = InputInt()
    startSpaces : int = (n - 1) / 2
    start : int
    end : int
    i : int
    j : int
    start = 0
    end = startSpaces

    for i = 0 to (n + 1) / 2 - 1
        for j = start to end
            if j < startSpaces
                printChar(' ')
            else
                printChar('*')
            endIf
        endFor
        start = start+1
        end = end+2
        nl()
    endFor

    start = start - 2
    end = end - 4

    for i = 0 to ((n - 1) / 2) 
        for j = start to end
            if j < startSpaces
                printChar(' ')
            else
                printChar('*')
            endIf
        endFor
        start = start-1
        end = end - 2
        nl()
    endFor
endFunction
endCode


njnk