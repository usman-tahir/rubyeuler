#!/usr/bin/env python

def fibo_generator():
    a, b = 1, 1
    while True:
        yield a
        a, b = b, a + b

f = fibo_generator()
v = f.next()
counter = 1
while len(str(v)) < 1000:
    v = f.next()
    counter += 1

print counter
