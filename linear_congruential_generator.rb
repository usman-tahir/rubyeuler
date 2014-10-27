# http://rosettacode.org/wiki/Linear_congruential_generator

class LinearCongruentialGenerator

  attr_accessor :seed

  def initialize(seed)
    @seed = seed
  end

  def seed
    @seed
  end

end      

class BSDRand < LinearCongruentialGenerator

  @@a = 1103515245
  @@c = 12345
  @@m = (2 ** 31)

  def random
    @seed = (@@a * @seed + @@c) % @@m
  end

end    

class MSRand < LinearCongruentialGenerator

  @@a = 214013
  @@c = 2531011
  @@m = (2 ** 31)

  def random
    @seed = (@@a * @seed + @@c) % @@m
    @seed / (2 ** 16)
  end  

end      

bsd_test = BSDRand.new(0)
ms_test = MSRand.new(0)

10.times do
  puts bsd_test.random
end

puts "~~~"

10.times do
  puts ms_test.random
end
