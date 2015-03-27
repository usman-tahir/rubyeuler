# http://programmingpraxis.com/2015/03/27/string-re-ordering/

def reorder_string(order,target)
  result = []
  desired_order = order.split(//); target_chars = target.split(//)
  desired_order.each { |c| target_chars.count(c).times { result << c } if target_chars.include?(c) }
  target_chars.each { |c| result.unshift(c) if !desired_order.include?(c) }
  result.join
end

puts reorder_string("eloh","hello")
puts reorder_string("eloh","help")
