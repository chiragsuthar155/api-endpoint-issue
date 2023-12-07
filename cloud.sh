#!/bin/bash

# Exit when any command fails
set -e

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do

  echo "==============ECOM NSLOOKUP=================="
  nslookup cloud-analytics.sial.com
  nslookup repo.maven.apache.org
  sleep 1
  
  echo "==============ECOM CURL======================"
  curl  -I --cacert ./cloud-analytics.sial.crt  "https://cloud-analytics.sial.com/deep?get=recentlyViewedAPI&guid=GA1.2.1607803001.1571084413&country=US&language=en&product=t1503&brand=sigma&count=10&addProduct=1&disp=recentlyViewedAdvancedSearch"
  sleep 1

  echo "for base url"
  curl --insecure -I https://cloud-analytics.sial.com
  sleep 1
done
