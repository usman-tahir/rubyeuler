#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Hailstone_sequence

h = -> (n,e=[n]) { return n == 1 ? e : n.even? ? h[n/2,e<<n/2] : h[((3*n)+1),e<<((3*n)+1)] }
n = 27; result = h[n]
p result.count; p result[0..3]; p result[-4..-1]
limit = 100_000; longest_n = 1; longest_seq = 1
(1...limit).each { |n| (longest_n = n; longest_seq = h[n].count) if h[n].count > longest_seq }
p longest_n; p longest_seq
