#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Handle_a_signal


loop do
  start_time = Time.now
  counter = 0
  Signal.trap("INT") do
    puts
    puts "runtime: #{Time.now - start_time} seconds"
    exit
  end
  loop { puts counter += 1; sleep(0.5) }
end
  