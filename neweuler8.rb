# http://projecteuler.net/problem=8

def prep_number_string
  a = '73167176531330624919225119674426574742355349194934'
  b = '96983520312774506326239578318016984801869478851843'
  c = '85861560789112949495459501737958331952853208805511'
  d = '12540698747158523863050715693290963295227443043557'
  e = '66896648950445244523161731856403098711121722383113'
  f = '62229893423380308135336276614282806444486645238749'
  g = '30358907296290491560440772390713810515859307960866'
  h = '70172427121883998797908792274921901699720888093776'
  i = '65727333001053367881220235421809751254540594752243'
  j = '52584907711670556013604839586446706324415722155397'
  k = '53697817977846174064955149290862569321978468622482'
  l = '83972241375657056057490261407972968652414535100474'
  m = '82166370484403199890008895243450658541227588666881'
  n = '16427171479924442928230863465674813919123162824586'
  o = '17866458359124566529476545682848912883142607690042'
  p = '24219022671055626321111109370544217506941658960408'
  q = '07198403850962455444362981230987879927244284909188'
  r = '84580156166097919133875499200524063689912560717606'
  s = '05886116467109405077541002256983155200055935729725'
  t = '71636269561882670428252483600823257530420752963450'

  thousand_digit_number_string = String.new
  ('a'..'t').each do |letter|
    thousand_digit_number_string << eval(letter)
  end
  thousand_digit_number_string
end

def find_largest_product(number_string)
  largest_product_value = 0
  (0..987).each do |index|
    temp_product =  number_string[index].to_i * 
                    number_string[index+1].to_i * 
                    number_string[index+2].to_i * 
                    number_string[index+3].to_i *
                    number_string[index+4].to_i *
                    number_string[index+5].to_i *
                    number_string[index+6].to_i *
                    number_string[index+7].to_i *
                    number_string[index+8].to_i *
                    number_string[index+9].to_i *
                    number_string[index+10].to_i *
                    number_string[index+11].to_i *
                    number_string[index+12].to_i
    largest_product_value = temp_product if temp_product > largest_product_value
  end
  largest_product_value
end

puts find_largest_product(prep_number_string)
