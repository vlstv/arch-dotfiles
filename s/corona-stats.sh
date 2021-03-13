#!/bin/bash

country="Israel"
data=$(curl https://corona-stats.online/$country\?format\=json)

deaths=$(echo "$data" | jq  ".data | .[] | .todayDeaths")
cases=$(echo "$data" | jq  ".data | .[] | .todayCases")

echo " $cases/$deaths"
