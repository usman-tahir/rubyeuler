# http://programmingpraxis.com/2015/03/24/excellent-numbers/

def excellent?(n)
  partitions = n.to_s.scan(/.{#{n.to_s.length/2}}/).map { |e| e.to_i ** 2 }
  partitions[1] - partitions[0] == n
end

[140400, 190476, 216513, 300625, 334668, 416768, 484848, 530901].each { |n| puts "#{n}: #{excellent?(n)}" }
