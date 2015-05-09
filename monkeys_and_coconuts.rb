#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/08/monkeys-and-coconuts/
# http://oeis.org/A002021

nuts = -> n { n.even? ? (n - 1) * (n ** n - 1) : n ** n - n + 1 }
(1..30).each { |s| puts "#{s}: #{nuts[s]}" }
