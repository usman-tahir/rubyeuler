#!/usr/bin/env python
import numpy

def same_side(p1, p2, a, b):
    cp1 = numpy.cross(numpy.subtract(b, a), numpy.subtract(p1, a))
    cp2 = numpy.cross(numpy.subtract(b, a), numpy.subtract(p2, a))
    return numpy.dot(cp1, cp2) >= 0

def origin_in_triangle(t):
    a, b, c, p = t[0], t[1], t[2], (0,0)
    return same_side(p, a, b, c) and \
           same_side(p, b, a, c) and \
           same_side(p, c, a, b)

def parse_triangle_string(t):
    pts = [int(p) for p in t.rstrip().split(',')]
    return ((pts[0], pts[1]), (pts[2], pts[3]), (pts[4], pts[5]))

f = open('p102_triangles.txt','r')
print sum([1 for t in list(f) if origin_in_triangle(parse_triangle_string(t))])
