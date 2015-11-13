#!/usr/bin/env ruby
# http://www.codewars.com/kata/is-valid-identifier

def valid_identifier(s)
  digits = (0..9).to_a.map {|e| e.to_s}
  alpha = ("a".."z").to_a
  chars = ["$","_"]
  all = digits + alpha + chars
  if s[0] != "$" && !alpha.include?(s[0].downcase)
    return false
  end
  (1...s.length).each { |c| return false if !all.include?(s[c].downcase) }
  return true
end

["i","wo_rd","b2h"].each { |e| p valid_identifier(e) }
["1i","wo rd","!b2h"].each { |e| p valid_identifier(e) }