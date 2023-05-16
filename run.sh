#!/bin/bash

source torsocks on
url="$(shuf -n 1 /usr/local/src/url-list)"
echo "$(date '+%Y-%m-%d %H:%M:%S') Trying to wget ${url}"

wget -qO - ${url}; echo
