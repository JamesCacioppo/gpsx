#!/bin/bash

# Sample output from Google Maps
# 39.110756, -77.518428

# Sample link from Manasass Scanner
# https://www.google.com/maps?q=39.1021095339028,-77.4899589906462

get_lat_long() {
  lat=`echo $1 | awk -F ',' '{print $1}'`
  long=$2
  
  echo $lat
  echo $long
}

replace_lat() {
  sed -i .bak -E "s/[0-9]{2}\.[0-9]{6}/$lat/" on-the-fly.gpx
}

replace_long() {
  sed -i .bak -E "s/\-[0-9]{2}\.[0-9]{5}/$long/" on-the-fly.gpx
}

main() {
  get_lat_long()
  replace_lat()
  replace_long()
}

main()
