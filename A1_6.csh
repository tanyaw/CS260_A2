#!/bin/csh

set counter = 0
while ( $counter < 10 )
    echo $counter
    @ counter = $counter + 1
end

exit 0
