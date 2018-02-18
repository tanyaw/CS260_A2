#!/bin/csh -f

alias do_square 'set s = 0; @ s = $1 * $1; echo "The square of $1 is: $s"'

###
# Main Function
###
do_square
exit 0
