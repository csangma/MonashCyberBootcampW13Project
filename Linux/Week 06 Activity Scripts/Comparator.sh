#!/bin/bash

# number variables
x=7
y=1

# string variables
str1='String1'
str2='String2'

# If $x is equal to $y
if [ $x = $y ]
then 
  echo "X = Y"
fi

# If x is not equal to y
if [ $x != $y ]
then 
  echo "X != Y"
fi

# If str1 is not equal to str2
if [ $str1 != $str2 ]
then 
  echo "Strings not matching"
  echo "Exiting"
  exit
fi

# If x is greater than y
if [ $x -gt $y ]
then
  echo "$x greater than $y".
fi

# check if x is less than y 
if [ $x -lt $y ]
then 
  echo "$x less than $y!"
else
  echo "$x not less than $y!"
fi

# check for the /etc directory
if [ -d /etc ]
then
  echo "The /etc directory exists!"
fi


# if sysadmin is running this script
if [ $USER != 'sysadmin' ]
then 
  echo "You are not the sysadmin!"
  exit
fi
