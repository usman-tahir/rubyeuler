# http://programmingpraxis.com/2011/05/06/entab-and-detab/

def entab(file)
  f = File.open(file)
  f = f.read.gsub!(' ',"\t")
  File.write(file,f)
end

def detab(file)
  f = File.open(file)
  f = f.read.gsub!("\t",' ')
  File.write(file,f)
end  

params = ["-e","-d"]
case
when ARGV.count < 2 || !params.include?(ARGV[0].to_s)
  puts "usage: ... [-e] [filename] to entab && ... [-d] [filename] to detab"
when !File.file?(ARGV[1].to_s)
  puts "#{ARGV[1].to_s} not found"
when ARGV[0].to_s == "-e"
  entab(ARGV[1].to_s)
  puts "#{ARGV[1].to_s} has been entabbed"
when ARGV[0].to_s == "-d"
  detab(ARGV[1].to_s)
  puts "#{ARGV[1].to_s} has been detabbed"
else
  puts "something went wrong"
end        
