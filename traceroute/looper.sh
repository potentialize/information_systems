for ((i=0;i<3;i++))
do
  echo "TRACEROUTE $i start:"
  traceroute www.government.kz | tee -a DATA
  # traceroute www.government.kz >> DATA
  echo "SLEEPING..."
  sleep 10s
done
