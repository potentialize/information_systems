#!/usr/bin/env python3
import time
import sys

def tick() :
    print("hw")

# infinite loop with graceful termination
try:
    while True :
        tick()
        time.sleep(1)
except KeyboardInterrupt:
    sys.exit()
