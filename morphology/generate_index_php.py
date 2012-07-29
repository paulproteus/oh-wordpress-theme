#!/usr/bin/python
import sys
import os

data = open(sys.argv[1]).read()
things = os.listdir('replacements')
for thing in things:
    value = open('replacements/' + thing).read()
    data = data.replace(thing, value)
print data
