#!/bin/bash

tor&

source torsocks on
url="$(shuf -n 1 /usr/local/src/url-list)"
echo "$(date '+%Y-%m-%d %H:%M:%S') Trying to wget ${url} via $(wget -qO - https://api.ipify.org; echo)"

wget -qO - ${url} >> /var/log/tor/request.log

wait=${WAIT:-0}
echo "$(date '+%Y-%m-%d %H:%M:%S') wait for $wait before ending"
sleep $wait

exit 0
