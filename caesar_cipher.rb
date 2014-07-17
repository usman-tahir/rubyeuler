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


def caesar(string, key, flag)
  string_to_code = string.upcase.split(//).map.to_a
  cipher_key = LETTERS.rotate(key)
  string_to_code.each_with_index do |character,position|
    next if character == " "
    string_to_code[position] = cipher_key[LETTERS.index(character)] if flag == "encode"
    string_to_code[position] = LETTERS[cipher_key.index(character)] if flag == "decode"
  end
  string_to_code.join
end

puts caesar(test_string1,20,"encode")
puts caesar(test_string3,3,"encode")
puts caesar(test_string2,2,"decode")
puts caesar(caesar(test_string3,2,"encode"),2,"decode")

puts ((Time.now-start_time).to_f).to_s + "s"	