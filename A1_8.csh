#!/bin/csh

if ($#argv != 2) then
    echo "This script must be executed with 2 commandline arguments. Please try running again."
    exit 0
endif

if ( $1 <= $2 ) then
    set first = $1
    set second = $2
else
    set first = $2
    set second = $1
endif

#GCD
set gcd = $first
set div = $second
set rem = 0

while ( $div != 0 )
    @ rem = $gcd % $div
    set gcd = $div
    set div = $rem
end
echo "The GCD of $1 and $2 is: $gcd"
  
#LCM
@ lcm = $first * $second / $gcd
echo "The LCM of $1 and $2 is: $lcm"

exit 0
