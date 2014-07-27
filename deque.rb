# http://en.wikipedia.org/wiki/Double-ended_queue
deque = Array.new


# Operations
# http://en.wikipedia.org/wiki/Double-ended_queue#Operations
def deque.add_at_head(element)
  self.unshift(element)
end

def deque.add_at_tail(element)
  self << element
end

def deque.empty?
  self.count == 0
end

def deque.remove_last
  self.pop
end

def deque.remove_first
  self.shift
end

def deque.ex_last
  self[-1]
end

def deque.ex_first
  self[0]
end

deque.add_at_head(123)
deque.add_at_tail(1551)
deque.add_at_head(6_000_000)
deque.add_at_tail(1.000)
deque.add_at_head(nil)
deque.add_at_tail("boogie")
puts deque.empty?
puts deque.ex_last.inspect
puts deque.ex_first.inspect

until deque.empty? == true
puts deque.remove_last if deque.size.even?
puts deque.remove_first if deque.size.odd?
end	

puts deque.empty?
