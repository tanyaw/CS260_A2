#!/bin/csh

/bin/echo -n "Please enter an integer (between 1 and 10): "
set user_input = $<

if ( $user_input >= 1 && $user_input <= 10 ) then
    #Factorial
    /bin/echo -n "The factorial of $user_input is: ("
    set fact = 1
    @ i = 1
    while ($i <= $user_input)
        @ fact = $fact * $i
        
        if ($i == $user_input) then
            /bin/echo -n "$i) = "
        else
            /bin/echo -n "$i*"
        endif

        @ i += 1
    end
    
    echo "$fact"

    #Summation
    /bin/echo -n "The summation of $user_input is: ("
    set sum = 0
    @ i = 1
    while ($i <= $user_input)
        @ sum = $sum + $i
        
        if ($i == $user_input) then
            /bin/echo -n "$i) = "
        else
            /bin/echo -n "$i+"
        endif

        @ i += 1
    end
    
    echo "$sum" 
else
    echo "This integer is not between 1 and 10."
    exit 0
endif

exit 0
