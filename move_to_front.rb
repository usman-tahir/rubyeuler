# http://rosettacode.org/wiki/Move-to-front_algorithm
start_time = Time.now
ENCODING_KEY = ("a".."z").to_a
DECODING_KEY = ("a".."z").to_a
encode_this_string = "broood"
decode_this_array = [1,17,15,0,0,5]

def encode(string)
  encoded_array =[]
  temp_encoding_array = ENCODING_KEY
  string.each_char do |char|
    encoded_array << temp_encoding_array.index(char)
    temp_encoding_array.delete(char)
    temp_encoding_array.unshift(char)  
  end
  encoded_array	
end	

def decode(array)
  array_to_decode = array
  temp_decoding_array = DECODING_KEY
  decoded_text = String.new
  array_to_decode.each do |index|
    character_to_add = temp_decoding_array[index]
    decoded_text << character_to_add
    temp_decoding_array.delete(character_to_add)
    temp_decoding_array.unshift(character_to_add)
  end	
  decoded_text
end	

puts encode(encode_this_string).inspect
puts decode(decode_this_array).inspect

puts ((Time.now-start_time).to_f).to_s + "s"
