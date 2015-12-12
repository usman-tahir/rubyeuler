#!/usr/bin/env ruby

class Link

  attr_accessor :data, :subseq

  def initialize(data, subseq=nil)
    @data = data
    @subseq = subseq
  end

  def subseq
    @subseq
  end

  def subseq=(next_link)
    @subseq = next_link
  end

  def append(link_to_append)
    link_to_append.subseq = @subseq
    @subseq = link_to_append
  end

  def delete_subseq
    @subseq = @subseq.subseq
  end

end

a = Link.new("link one")
b = Link.new("link two")
a.subseq = b
p a.subseq.data
p b.subseq
c = Link.new("link three")
a.append(c)
p a.subseq.data
p c.subseq.data
a.delete_subseq
p a.subseq.data

def traverse_list(current_node)
  p current_node.data
  if current_node.subseq == nil  
    return
  else 
    return traverse_list(current_node.subseq)
  end
end

one = Link.new("1")
two = Link.new("2")
three = Link.new("3")
four = Link.new("4")
one.append(two)
two.append(three)
three.append(four)
traverse_list(one)

two.delete_subseq
traverse_list(one)