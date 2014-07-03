# http://rosettacode.org/wiki/Reverse_words_in_a_string
start_time = Time.now

File.open('poem.txt').each_line do |line|
  puts line.split.reverse.join(" ")
end

puts ((Time.now-start_time).to_f).to_s + "s"  