# http://programmingpraxis.com/2009/03/10/word-frequencies/

def word_freq(file,number)
  results = Hash.new
  f = File.new(file)
  f.read.scan(/[\w']+/).each do |word|
    if results.include?(word)
      results[word] += 1
    else
      results[word] = 1
    end
  end
  Hash[results.sort_by {|word,count| -count}]
end

def print_freq(file,number=1)
  a = word_freq(file,number)
  if number > a.count
    number = a.count
  end  
  p_frq = []
  (0...number).each do |index|
    p_frq << "#{a.keys[index]}: #{a.values[index]}"
  end
  p_frq  
end

case  
when ARGV.count == 1 && File.file?(ARGV[0].to_s)
  puts print_freq(ARGV[0].to_s)
when ARGV.count == 2 && File.file?(ARGV[0].to_s) && ARGV[1].to_i != 0
  puts print_freq(ARGV[0].to_s,ARGV[1].to_i)
when !File.file?(ARGV[0].to_s)
  puts "can't find file #{ARGV[0].to_s}"
else
  puts "usage:"
  puts "word_freq.rb [filename] [number of words]"
end
