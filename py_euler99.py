#!/usr/bin/env python
import math

def log_value(pair):
    return math.log(pair[0]) * pair[1]

f = open('p099_base_exp.txt')
pairs = [p.rstrip().split(',') for p in list(f)]
values = [log_value((int(p[0]), int(p[1]))) for p in pairs]
print values.index(max(values)) + 1 # 0 indexed
