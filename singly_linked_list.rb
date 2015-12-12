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

end

a = Link.new(1)
b = Link.new(2)
a.subseq = b
p a.subseq.data
p b.subseq
