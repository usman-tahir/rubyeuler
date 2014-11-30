# http://programmingpraxis.com/2009/12/08/word-count/

def word_count(attribute="-w",file)
  f = File.new(file)
  case
  when attribute == "-w"
    f.map {|word| word.chomp}.to_a.count
  when attribute == "-l"
    line_nos = 0
    f.readlines.each do |line|
      line_nos += 1
    end
    line_nos  
  when attribute == "-c"
    char_nos = 0
    f.each_char do |char|
      char_nos += 1
    end
    char_nos
  end    
end

def print_wc(attribute,file)
  case
  when attribute == nil
    "#{word_count("-w",file)}  #{word_count("-l",file)}  #{word_count("-c",file)} #{file}"
  when attribute == "-w"
    "#{word_count("-w",file)}  #{file}"
  when attribute == "-l"
    "#{word_count("-l",file)}  #{file}"  
  when attribute == "-c"
    "#{word_count("-c",file)}  #{file}"
  end
end  

ATTRIBUTES = ["-w","-l","-c"]
case 
when ARGV.count == 0
  puts "usage:"
  puts "wc [-lwc] [filename]"
when ARGV.count == 1 && ATTRIBUTES.include?(ARGV[0].to_s)
  puts "please choose a file"
when ARGV.count == 1 && !ATTRIBUTES.include?(ARGV[0].to_s)
  puts print_wc("-w",ARGV[0].to_s) if File.file?(ARGV[0].to_s)
  puts "can't find file: #{ARGV[0].to_s}" if !File.file?(ARGV[0].to_s)
when ARGV.count == 2 && ATTRIBUTES.include?(ARGV[0].to_s)
  puts print_wc(ARGV[0].to_s,ARGV[1].to_s) if File.file?(ARGV[1].to_s)
  puts "can't find file: #{ARGV[1].to_s}" if !File.file?(ARGV[1].to_s)
when ARGV.count == 2 && !ATTRIBUTES.include?(ARGV[0].to_s)
  puts "usage:"
  puts "wc [-lwc] [filename]"
when ARGV.count > 2
  puts "usage:"
  puts "wc [-lwc] [filename]"
end
