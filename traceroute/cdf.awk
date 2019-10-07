BEGIN {
  min = 1000
  max = 0
}

{
  if ($0 < min) {
    min = $0
  } else if ($0 > max) {
    max = $0
  }
}

END {
  print "min: " min
  print "max: " max
}
