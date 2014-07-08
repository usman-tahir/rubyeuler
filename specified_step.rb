# http://rosettacode.org/wiki/Loops/For_with_a_specified_step
start_time = Time.now

def spec_step(start,finish,step)
  (start..finish).step(step) {|number| print "#{number}, "}
  puts "who do we appreciate?"
end

spec_step(2,8,2)
puts ((Time.now-start_time).to_f).to_s + "s"
