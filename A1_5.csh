#!/bin/csh

echo "Please enter a color: "
set user_input = $<

switch ($user_input)
    case "yellow":        
    case "red":
        echo "The sun is sometimes this color."
        breaksw
    case "Bl"*:
    case "bl"*:
        echo "The sky is $user_input" 
        breaksw
    default:
        echo "Sorry, this color is not in any of the defined categories."
        breaksw
endsw

exit 0
