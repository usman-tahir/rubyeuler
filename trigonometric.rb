# http://rosettacode.org/wiki/Trigonometric_functions

# sine, cosine, tangent, and inverses using same angle in radians and degrees

def sine(float)
  Math.sin(float)
end

def cosine(float)
  Math.cos(float)
end

def tangent(float)
  Math.tan(float)
end

def arcsine(float)
  Math.asin(float)
end

def arccosine(float)
  Math.acos(float)
end

def arctangent(float)
  Math.atan(float)
end

degrees = 45.0
radians = Math::PI / 4

puts "#{sine(radians)} :: #{sine(degrees * Math::PI / 180)}"
puts "#{cosine(radians)} :: #{cosine(degrees * Math::PI / 180)}"
puts "#{tangent(radians)} :: #{tangent(degrees * Math::PI / 180).ceil}"
puts "#{arcsine(sine(radians))} :: #{(arcsine(sine(radians)) * 180 / Math::PI).ceil}"
puts "#{arccosine(cosine(radians))} :: #{(arccosine(cosine(radians)) * 180 / Math::PI).ceil}"
puts "#{arctangent(tangent(radians))} :: #{(arctangent(tangent(radians)) * 180 / Math::PI).ceil}"
