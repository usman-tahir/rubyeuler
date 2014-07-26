# http://rosettacode.org/wiki/Queue/Usage
# 
# push (aka enqueue) - add element
# pop (aka dequeue) - pop first element
# empty - return truth value when empty 
start_time = Time.now
queue = Array.new

def queue.enqueue(element)
  self << element
end	

def queue.dequeue
  self.shift
end

def queue.empty?
  self.count == 0
end

puts "Testing queue operations"
puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ "
puts "Enqueuing elements 3,2, and 1:"
queue.enqueue(3)
queue.enqueue(2)
queue.enqueue(1)
puts "Queue is empty? " + queue.empty?.to_s
puts "Dequeuing elements:"
puts queue.dequeue.to_s
puts queue.dequeue.to_s
puts queue.dequeue.to_s
puts "Queue is empty? " + queue.empty?.to_s

puts ((Time.now-start_time).to_f).to_s + "s"
