# http://rosettacode.org/wiki/Speech_synthesis
start_time = Time.now

system('say "This is an example of speech synthesis."')

puts ((Time.now - start_time).to_f).to_s + "s"