#!/usr/bin/env ruby
# https://programmingpraxis.com/2016/04/12/titlecase/

def title_case(s)
    title = -> s { s[0].upcase + s[1..-1].downcase }
    return s.split(' ').map { |w| title[w] }.join(' ')
end

p title_case('progamming PRAXIS')
