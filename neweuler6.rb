#!/usr/bin/env ruby
# http://projecteuler.net/problem=6

p ((1..100).to_a.inject(:+) ** 2) - ((1..100).map {|e| e ** 2}.inject(:+))
