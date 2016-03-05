#!/usr/bin/env python

multiply = lambda x, y: x * y
print sum([int(x) for x in list(str(reduce(multiply, xrange(1,101))))])
