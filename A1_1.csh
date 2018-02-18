#!/bin/csh

echo -n "Please enter an integer value: "
set user_input = $<

if ( $user_input % 2 == 0 ) then
    echo "This is an even number."
else
    echo "This is an odd number."
endif

exit 0
