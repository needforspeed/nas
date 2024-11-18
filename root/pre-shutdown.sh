#!/bin/bash

NAME="`hostname -s`"

stty -F /dev/ttyS1 1200

# clear display
printf '\115\015' > /dev/ttyS1
sleep 1

# turn on display
printf '\115\136\001' > /dev/ttyS1
sleep 1

# print hostname on line 1
printf '\115\014\000 '$NAME > /dev/ttyS1 
sleep 1

# print message on line 2
printf '\115\014\001 Shutting Down' > /dev/ttyS1 

