# http://rosettacode.org/wiki/Caesar_cipher
#
# Implement a Caesar cipher, both encoding and decoding. 
# The key is an integer from 1 to 25. This cipher rotates 
# the letters of the alphabet (A to Z). The encoding replaces 
# each letter with the 1st to 25th next letter in the alphabet 
# (wrapping Z to A). So key 2 encrypts "HI" to "JK", but key 
# 20 encrypts "HI" to "BC". This simple "monoalphabetic 
# substitution cipher" provides almost no security, because 
# an attacker who has the encoded message can either use 
# frequency analysis to guess the key, or just try all 25 keys. 
#
start_time = Time.now
LETTERS = ("A".."Z").to_a
test_string1 = "HI"
test_string2 = "JK"
test_string3 = "The five boxing wizards jump quickly"

def caesar_encode(string, key)
  string_to_encode = string.upcase.split(//).map.to_a
  cipher_key = LETTERS.rotate(key)
  string_to_encode.each_with_index do |character,position|
    next if character == " "
    string_to_encode[position] = cipher_key[LETTERS.index(character)]
  end
  string_to_encode.join
end

def caesar_decode(string, key)
  string_to_decode = string.upcase.split(//).map.to_a
  cipher_key = LETTERS.rotate(key)
  string_to_decode.each_with_index do |character,position|
    next if character == " "
    string_to_decode[position] = LETTERS[cipher_key.index(character)]
  end
  string_to_decode.join  
end

puts caesar_encode(test_string1,20)
puts caesar_encode(test_string3,3)
puts caesar_decode(test_string2,2)
puts caesar_decode(caesar_encode(test_string3,2),2)

puts ((Time.now-start_time).to_f).to_s + "s"	