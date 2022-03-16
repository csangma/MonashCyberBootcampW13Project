#!/bin/bash 
cat ~/Documents/Lucky_Duck_Investigations/Dealer_Analysis/0315_Dealer_schedule | grep '08:00:00 AM' | awk -F' ' '{print $1,$2,$5,$6}'

