#!/usr/bin/env ruby
# https://projecteuler.net/problem=61

class Numeric

  def triangular?
    (Math.sqrt((8 * self) + 1)) % 1 == 0
  end    

  def square?
    (Math.sqrt(self)) % 1 == 0
  end  

  def pentagonal?
    ((Math.sqrt((24 * self) + 1) + 1) / 6) % 1 == 0
  end

  def hexagonal?
    ((Math.sqrt((8 * self) + 1) + 1) /  4) % 1 == 0
  end

  def heptagonal?
    (((Math.sqrt((40 * self) + 9)) + 3) / 10) % 1 == 0
  end

  def octagonal?
    (((Math.sqrt((3 * self) + 1)) + 1) / 3) % 1 == 0
  end

  def figurate?
    self.triangular? || self.square? || self.pentagonal? ||
    self.hexagonal? || self.heptagonal? || self.octagonal?
  end

end

def first_two_eq_last_two(x,y)
  x.to_s[0..1].to_i == y.to_s[-2..-1].to_i
end

def has_first_two_eq_last_two(n,ary)
  ary.each { |t| return true if first_two_eq_last_two(n,t)}
  return false
end

triangles = []; squares = []; pentagons = []
hexagons = []; heptagons = []; octagons = []
(1000..9999).each do |n|
  next if n.to_s.split(//).to_a.include?("0")
  triangles << n if n.triangular?
  squares << n if n.square?
  pentagons << n if n.pentagonal?
  hexagons << n if n.hexagonal?
  heptagons << n if n.heptagonal?
  octagons << n if n.octagonal?
end

squares.map! {|e| has_first_two_eq_last_two(e,triangles) ? e : nil}.compact!
heptagons.map! {|e| has_first_two_eq_last_two(e,squares) ? e : nil}.compact!
octagons.map! {|e| has_first_two_eq_last_two(e,heptagons) ? e : nil}.compact!
hexagons.map! {|e| has_first_two_eq_last_two(e,octagons) ? e : nil}.compact!
pentagons.map! {|e| has_first_two_eq_last_two(e,hexagons) ? e : nil}.compact!
triangles.map! {|e| has_first_two_eq_last_two(e,pentagons) ? e : nil}.compact!
squares.map! {|e| has_first_two_eq_last_two(e,triangles) ? e : nil}.compact!
heptagons.map! {|e| has_first_two_eq_last_two(e,squares) ? e : nil}.compact!

p triangles[0] + squares[0] + pentagons[0] + hexagons[0] + heptagons[0] + octagons[0]
