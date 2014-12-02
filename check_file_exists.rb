# http://rosettacode.org/wiki/Check_that_file_exists

def file_exists(file)
  File.file?(file)
end

p file_exists(ARGV[0].to_s)
