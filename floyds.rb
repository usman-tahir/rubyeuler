#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Floyd%27s_triangle

floyds = -> r,n=1 { (1...r).each {|r| (1..r).each { print n < 10 ? "  #{n}" : " #{n}"; n += 1 }; print "\n" } }

p floyds[14]