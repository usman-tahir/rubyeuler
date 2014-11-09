# http://rosettacode.org/wiki/Unix/ls

def ls
  Dir.new('.').each {|file| puts file}
end

ls
