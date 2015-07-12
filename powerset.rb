#!/usr/bin/env ruby

powerset = -> list { list.empty? ? [[]] : powerset[list[1...list.count]].map {|i| list[0,1] + i} + powerset[list[1...list.count]] }
p powerset[[1,2,3,4]]
