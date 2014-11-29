# http://rosettacode.org/wiki/Letter_frequency

def letter_frequency(file)
  letters = ('a'..'z').to_a
  counts = Array.new(26) {|elem| elem = 0}
  File.read(file).split(//).each do |letter|
    next if letters.find_index(letter.downcase) == nil
    counts[letters.find_index(letter.downcase)] += 1
  end  
  Hash[letters.zip(counts)].sort_by { |key, value| -value }.each {|pair| p pair}
end

letter_frequency(ARGV[0].to_s)
