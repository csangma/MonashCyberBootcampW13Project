#!/bin/bash

cat ~/Documents/Lucky_Duck_Investigations/Dealer_Analysis/0310_Dealer_schedule | grep '05:00:00 AM' | awk -F' ' '{print $1,$2,$5,$6}'

