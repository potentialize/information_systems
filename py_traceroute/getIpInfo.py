#!/usr/bin/env python3

import ipapi

ipCache = {}

def getIpInfo(ip) :
    if ip in ipCache :
        # return cached ip info
        return ipCache[ip]
    else:
        # get ip info online
            # r = requests.get("https://ipapi.co/%s/json/" % ip)
            # ipInfo = r.json()
        ipInfo = ipapi.location(ip)
        ipCache[ip] = ipInfo
        return ipInfo
