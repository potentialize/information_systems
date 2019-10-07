# awk -f process.awk pingData

# $1 first part, line break, #2 second part...

# Before reading, define variables
BEGIN {
  delay
  data[3]
}

# Every line
{
  delay=$8
  split(delay, data, "=")
  if ($1 == 64) {
    print data[2]
  }
}

# After file processed, e.g. make summary
END {

}
