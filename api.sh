#!/bin/bash

# Exit when any command fails
set -e

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do

  echo "==============ECOM CURL======================"
  curl -I https://ecommerceweb-ud.milliporesigma.io
  sleep 1

  echo "==============ECOM NSLOOKUP=================="
  nslookup ecommerceweb-ud.milliporesigma.io
  sleep 1

  echo "==============AEM CURL======================="
  curl -I https://aemcms-commons-ud.milliporesigma.io/sigmaaldrich/US/en/navigation.model.json
  sleep 1

  echo "==============AEM NSLOOKUP==================="
  nslookup aemcms-commons-ud.milliporesigma.io
  sleep 1

  echo "==============CONTENT-STREAM CURL======================"
  curl -I https://contentstream-ud.milliporesigma.io
  sleep 1

  echo "==============CONTENT-STREAM NSLOOKUP=================="
  nslookup contentstream-ud.milliporesigma.io
  sleep 1

  echo "==============SEARCH-CONTENT CURL======================"
  curl -I https://searchcontent-ud.milliporesigma.io
  sleep 1

  echo "==============SEARCH-CONTENT NSLOOKUP=================="
  nslookup searchcontent-ud.milliporesigma.io
  sleep 1

done
