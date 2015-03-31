# http://rubyquiz.com/quiz52.html

def template(balloon=nil,eyes="-a")
  case
  when eyes == "-a"
    eye = "a"
  when eyes == "-d"
    eye = "x"
  when eyes == "-b"
    eye = "="
  when eyes == "-g"
    eye = "$"
  when eyes == "-p"
    eye = "@"
  when eyes == "-s"
    eye = "*"
    t2 = "U"
  end
  %[
  ( #{balloon} )
   .
    .
     .
     .
    .
                     _..
   /}_{\\           /.-'
  ( #{eye} #{eye} )-.___...-'/
  ==._.==         ;
     #{t2}   \ i _..._ /,
        {_;/   {_//  
  ]
end

puts template(ARGV[0].chomp,ARGV[1].chomp)