#!/usr/bin/env bash

# array with location to traceroute
locs=(www.google.be)

# location length
ll=${#locs[@]}

# time between traceroutes
tbt=60 # 300s = 5min

# timestamped output file
file=$(date +"ASSIGNMENT_data_%y_%m_%d-%H_%M_%S.txt")

# current location index
ci=0

# counter
i=0

# run until killed
while :
do
  loc=${locs[ci]}

  # echo "TRACEROUTE for $loc"

  echo "COUNTER: $i" | tee -a $file

  traceroute $loc | tee -a $file

  echo "SLEEPING..."
  sleep $tbt


  # set index to next location
  ci=$(( (ci+1) % ll ))

  ((i++))
done
