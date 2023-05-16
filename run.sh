#!/bin/bash

source torsocks on
url="$(shuf -n 1 /usr/local/src/url-list)"
echo "$(date '+%Y-%m-%d %H:%M:%S') Trying to wget ${url}"
nc -vzu 192.168.1.254 53
wget -qO - ${url}; echo

