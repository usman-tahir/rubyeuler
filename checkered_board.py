#!/usr/bin/env python

def checkered_board(size):
  white_square = "X"
  black_square = "O"
  for c in xrange(0,size):
    for r in xrange(0,size):
      if r % 2 == 0:
        if c % 2 == 0:
          print white_square,
          print " ",
        else:
          print black_square,
          print " ",
      else:
        if c % 2 == 0:
          print black_square,
          print " ",
        else:
          print white_square,
          print " ",
    print " "

checkered_board(5)

