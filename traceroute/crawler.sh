#!/usr/bin/env bash

# array with location to traceroute
locs=(www.google.be)

# location length
ll=${#locs[@]}

# time between traceroutes
tbt=1

# timestamped output file
file=$(date +"data_%y_%m_%d-%H_%M_%S.txt")

# current location index
ci=0

# run until killed
while :
do
  loc=${locs[ci]}

  # echo "TRACEROUTE for $loc"

  traceroute $loc | tee -a $file

  echo "SLEEPING..."
  sleep $tbt


  # set index to next location
  ci=$(( (ci+1) % ll ))
done
