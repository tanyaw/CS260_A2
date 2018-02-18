#!/bin/csh

echo "Are you okay? [Y|N]"
set user_input = $<

while ( $user_input !~ "y" && $user_input !~ "Y" && $user_input !~ "N" && $user_input !~ "n" )
    echo "Are you okay? [Y|N]"
    set user_input = $<
end

if ( $user_input =~ "Y" || $user_input =~ "y" ) then
    echo "Glad to hear it!"
else if ( $user_input =~ "N" || $user_input =~ "n" ) then
    echo "Sorry you are not feeling good."
else
    echo ""
endif

exit 0
