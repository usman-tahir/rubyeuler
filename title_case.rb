#!/usr/bin/env ruby
# https://programmingpraxis.com/2016/04/12/titlecase/

t=->s{s.split(' ').map{|w|w[0].upcase+w[1..-1].downcase}.join(' ')}
p t['programming PRAXIS']
