#!/bin/csh

alias menu 'echo "---MENU---"; \\
    echo "1. Add the numbers (Enter a or A)"; \\
    echo "2. Subtarct the numbers (Enter s or S)"; \\
    echo "3. Multiply the numbers (Enter m or M)"; \\
    echo "4. Divide the numbers (Enter d or D)"; \\
    echo "5. Exit (Enter e or E)"; \\
    /bin/echo -n "Enter a selection from above: "'


alias menu2 'echo "---SUB MENU---"; \\
    echo "A) Would you like to do another operation on the same two integers?"; \\
    echo "B) Would you like to do another operation on two different integers?"; \\
    echo "C) Exit."; \\
    /bin/echo -n "Enter a selection from above (A|B|C): "'

###
# Main Function
###
#Input Sanitation
if ( $#argv != 2 ) then
    echo "This script must be executed with 2 commandline arguments. Please try running again."
    exit 0
endif

set first = $1
set second = $2

menu
set user_input = $<
set val = 0

while (1)
    switch ($user_input)
        case [Aa]:
            @ val = $first + $second
            echo "$first + $second = $val"
            
            menu2
            set user_input2 = $<

            if ($user_input2 =~ [Aa]*) then 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Bb]*) then
                /bin/echo -n "Enter first number: " 
                set first = $<
                /bin/echo -n "Enter second number: " 
                set second = $<
                menu
                set user_input = $<
            else if ($user_input2 =~ [Cc]*) then
                echo "Exiting Program..."
                exit 0
            else
                menu2
                set user_input2 = $<
            endif 

            breaksw
        case [Ss]:
            @ val = $first - $second
            echo "$first - $second = $val"
            menu2
            set user_input2 = $<
            echo ""

            if ($user_input2 =~ [Aa]* ) then 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Bb]*) then
                /bin/echo -n "Enter first number: "  
                set first = $<
                /bin/echo -n "Enter second number: " 
                set second = $< 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Cc]*) then
                echo "Exiting Program..."
                exit 0
            else
                menu2
                set user_input2 = $<
            endif 

            breaksw
        case [Mm]:
            @ val = $first * $second
            echo "$first * $second = $val"
            menu2
            set user_input2 = $<
            echo ""

            if ($user_input2 =~ [Aa]* ) then 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Bb]*) then
                /bin/echo -n "Enter first number: " 
                set first = $<
                /bin/echo -n "Enter second number: " 
                set second = $< 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Cc]*) then
                echo "Exiting Program..."
                exit 0
            else
                menu2
                set user_input2 = $<
            endif 

            breaksw
        case [Dd]:
            @ val = $first / $second
            echo "$first / $second = $val" 
            menu2
            set user_input2 = $<
            echo ""

            if ($user_input2 =~ [Aa]* ) then 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Bb]*) then
                /bin/echo -n "Enter first number: " 
                set first = $<
                /bin/echo -n "Enter second number: " 
                set second = $< 
                menu
                set user_input = $<
            else if ($user_input2 =~ [Cc]*) then
                echo "Exiting Program..."
                exit 0
            else
                menu2
                set user_input2 = $<
            endif 

            breaksw
        case [Ee]:
            echo "Exiting program..."
            exit 0
            breaksw
        default:
            echo "That is an invalid option, please try again."
            menu
            set user_input = $<
            breaksw
    endsw
end

