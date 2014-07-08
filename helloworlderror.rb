# http://rosettacode.org/wiki/Hello_world/Standard_error#Ruby
start_time = Time.now

raise "Goodbye, World!"

puts ((Time.now-start_time).to_f).to_s + "s"

