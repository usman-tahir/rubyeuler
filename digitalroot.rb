# http://rosettacode.org/wiki/Digital_root

def sum_digits(n,counter=0)
  n < 10 ? n + counter : sum_digits(n/10,counter+(n%10))
end

def find_root(n,persistence=1)
  n < 10 ? [n,persistence] : find_root(sum_digits(n),persistence+1)
end

[627615, 39390, 588225, 393900588225].each { |t| puts "#{t}: root = #{find_root(t)[0]} // persistence = #{find_root(t)[1]}" }
