#!/usr/bin/env python3
import ipapi

fileName = "data.txt"

# safely open data file and loop over each line
with open(fileName, "r") as file:

    ips = {}

    # process file one line at a time
    for line in file :
        parts = line.split()

        if parts[0] != "traceroute" :
            # line contains hop data
            for part in parts:
                if part[0] == "(":
                    # found part with ip
                    ip = part.replace('(', '').replace(')', '')

                    if ip not in ips :
                        # get ip info
                        ips[ip] = ipapi.location(ip)
