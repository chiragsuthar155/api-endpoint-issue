#!/bin/bash

# Exit when any command fails
set -e

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do

  echo "==============ECOM NSLOOKUP=================="
  nslookup cloud-analytics.sial.com
  sleep 1
  
  echo "==============ECOM CURL======================"
  curl --insecure -I https://cloud-analytics.sial.com
  sleep 1



done
