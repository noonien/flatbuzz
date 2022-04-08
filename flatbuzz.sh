#!/bin/sh
hour=$(date +%H)
min=$(date +%M)

# flatulence is only allowed when the minute is divisible by 3,
# but not when the hour is divisible by 5
if [ $(($min % 3)) = 0 -a $(($hour % 5)) != 0 ]; then
    echo flat
else
    echo buzz
    exit 1
fi
