#!/usr/bin/env ruby

powerset = -> l, res=[] { l.each { |i| t = l - [i]; res << t; t.each { |e| res << t - [e] unless res.include?(t - [e]) } }; res << [l,[]] }
p powerset[[1,2,3]]
