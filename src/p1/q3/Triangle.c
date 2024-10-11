code Triangle
function main ()
    var a : int = InputInt()
    b : int = InputInt()
    c : int = InputInt()
    
    if a+b > c
        if a+c > b
            if b+c > a
                print("Yes") 
            else
                print("No")
            endIf
        else
        print("No")
        endIf
    else
        print("No")
    endIf
endFunction
endCode
