#!/bin/csh

if ( $1 <= 100 && $1 >= 90 ) then 
    echo "You got an A!"
else if ( $1 < 90 && $1 >= 80 ) then
    echo "You got a B."
else if ( $1 < 80 && $1 >= 70 ) then
    echo "You got a C."
else if ( $1 < 70 && $1 >= 60 ) then
    echo "You got a D."
else if ( $1 < 60 && $1 >= 0 ) then
    echo "You failed."
else
    echo "Error, you entered an invalid value."
    exit 0
endif

exit 0 
