#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Partial_function_application

new_map = -> f,s,i=0 { i == s.count ? (return s) : (s[i] = f[s[i]]; return new_map[f,s,i+1]) }

f1 = -> n { n * 2 }
f2 = -> n { n * n }
fs = -> f,s { f[s] }
fsf1 = -> s { new_map[f1,s] }
fsf2 = -> s { new_map[f2,s] }

[[0,1,2,3],[2,4,6,8]].each { |e| p fsf1[e]; p fsf2[e] }
