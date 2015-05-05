#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/05/05/degrees-to-radians-to-degrees/

def degrees_to_radians(degrees,minutes=0,seconds=0)
  {:radians => (degrees + minutes/60.to_f + seconds/3600.to_f).to_f * (Math::PI/180)}
end

def radians_to_degrees(radians)
  r = radians * 180/Math::PI
  d = r.floor
  m = ((r-d) * 60).floor
  s = ((((r-d) * 60) - m) * 60).floor
  {:degrees => d,:minutes => m, :seconds => s}
end

p degrees_to_radians(47,6,38)
p radians_to_degrees(0.8222343068881509)
