# http://rosettacode.org/wiki/N%27th

def nth(n)
  unless n.to_s[-2] == "1"
    return n.to_s << "st" if n.to_s[-1] == "1"
    return n.to_s << "nd" if n.to_s[-1] == "2"
    return n.to_s << "rd" if n.to_s[-1] == "3"
  end
  return n.to_s << "th"
end

(0..25).each {|n| puts nth(n)}
(250..265).each {|n| puts nth(n)}
(1000..1025).each {|n| puts nth(n)}
