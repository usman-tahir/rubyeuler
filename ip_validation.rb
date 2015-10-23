#!/usr/bin/env ruby
# http://www.codewars.com/kata/ip-validation
require 'resolv'

def validate_ip(address)
  address =~ Resolv::IPv4::Regex ? true : false
end

valid = ["1.2.3.4","123.45.67.89"]
invalid = ["1.2.3","1.2.3.4.5","123.456.78.90","123.045.067.089"]
valid.each { |v| p validate_ip(v) }
invalid.each { |i| p validate_ip(i) }
