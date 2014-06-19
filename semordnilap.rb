# http://rosettacode.org/wiki/Semordnilap
start_time = Time.now

def store_words_in_array(filename)
  semordnilaps =[]
  File.open(filename).each do |line|
    next if line.to_s.chomp == line.to_s.chomp.reverse
    semordnilaps << line.to_s.chomp
  end
  semordnilaps
end

pairs_array = store_words_in_array('semord_dict.txt')
pairs_array.delete_if { |word| pairs_array.include?(word.reverse) == false }
puts "semordnilaps"
puts "pair count: " + (pairs_array.uniq.count/2).to_s
puts "pair examples:"
# puts pairs_array.inspect
puts "1. " + pairs_array[0] + " / " + pairs_array[0].reverse if pairs_array.include?(pairs_array[0].reverse)
puts "2. " + pairs_array[30] + " / " + pairs_array[30].reverse if pairs_array.include?(pairs_array[30].reverse)
puts "3. " + pairs_array[75] + " / " + pairs_array[75].reverse if pairs_array.include?(pairs_array[75].reverse)
puts "4. " + pairs_array[130] + " / " + pairs_array[130].reverse if pairs_array.include?(pairs_array[130].reverse)
puts "5. " + pairs_array[101] + " / " + pairs_array[101].reverse if pairs_array.include?(pairs_array[101].reverse)

puts ((Time.now-start_time).to_f).to_s + "s"
