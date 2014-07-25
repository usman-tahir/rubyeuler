# http://rosettacode.org/wiki/p_q
#
# Create a priority queue. The queue must support at least two operations:
#
# Insertion. An element is added to the queue with a priority (a numeric value).
# Top item removal. Deletes the element or one of the elements with the current 
# top priority and return it. 
#
# Priority    Task
#  3        Clear drains
#  4        Feed cat
#  5        Make tea
#  1        Solve RC tasks
#  2        Tax return
#
start_time = Time.now
p_q = Array.new(5, nil)

def p_q.insert_item(priority,item)
  self[priority-1] = item
end 

def p_q.pop_item
  self.shift
end	

p_q.insert_item(3,"Clear drains")
p_q.insert_item(4,"Feed")
p_q.insert_item(5,"Make tea")
p_q.insert_item(1,"Solve RC Tasks")
p_q.insert_item(2,"Tax return")

counter = 1
(p_q.count).times do
  puts counter.to_s + ": " + p_q.pop_item
  counter += 1
end	

puts ((Time.now-start_time).to_f).to_s + "s"