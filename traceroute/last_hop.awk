# save output of this script to file
# awk -f [this script] [data file] > [output script]

function parseLastHop() {
  if (lastHop != "") {
    split(lastHop, lastHopFields, " ")
    # for (i=1; lastHopFields[i]!=""; i++) {
    #   print lastHopFields[i]
    # }
    # print "END"

    # lastHopFields[4] contains the first ms value
    # other ms values do not have fixed index since they can come from a different server
    print lastHopFields[4]
  }
}

BEGIN {
  lastHop
  lastHopFields[15]
}

# match all hops (lines that start with an integer and possibly a leading space)
# remember hop
/^ *[0-9]+/ {
  lastHop=$0
}


/traceroute/ {
  parseLastHop()
}

END {
  parseLastHop()
}
