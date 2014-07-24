# http://rosettacode.org/wiki/Rot-13
#
# The definition of the rot-13 function is to simply 
# replace every letter of the ASCII alphabet with the 
# letter which is "rotated" 13 characters "around" the 
# 26 letter alphabet from its normal cardinal position 
# (wrapping around from "z" to "a" as necessary).
#
start_time = Time.now
LETTERS = ("a".."z").to_a
ENCODE_LETTERS = ("a".."z").to_a
DECODE_LETTERS = ("a".."z").to_a

def rot_thirteen_encode(string)
  rot_encoded_string = String.new
  rot_13_key = ENCODE_LETTERS
  13.times do
    rot_13_key.rotate!
  end	
  string.each_char do |character|
    encoding_index = LETTERS.find_index(character.downcase) if character =~ /[[:alpha:]]/
    rot_encoded_string << rot_13_key[encoding_index] if character =~ /[[:alpha:]]/
    rot_encoded_string << character if !(character =~ /[[:alpha:]]/)
  end
  rot_encoded_string
end 

def rot_thirteen_decode(string)
  rot_decoded_string = String.new
  rot_13_key = DECODE_LETTERS
  13.times do
    rot_13_key.rotate!
  end
  string.each_char do |character|
    encoding_index = rot_13_key.find_index(character.downcase) if character =~ /[[:alpha:]]/	
    rot_decoded_string << LETTERS[encoding_index] if character =~ /[[:alpha:]]/
    rot_decoded_string << character if !(character =~ /[[:alpha:]]/)
  end
  rot_decoded_string  
end

puts rot_thirteen_encode("abc")
puts rot_thirteen_decode("nop")

puts ((Time.now-start_time).to_f).to_s + "s"	