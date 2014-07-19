# http://rosettacode.org/wiki/Strip_a_set_of_characters_from_a_string
start_time = Time.now
test_string1 = "She was a soul stripper. She took my heart!"
characters = "aei"

test_string = test_string1

def test_string.stripchars(chars)
  char_array = chars.split(//).map
  char_array.each do |char|
    self.delete! char
  end
  self
end

puts test_string.stripchars(characters)
puts ((Time.now-start_time).to_f).to_s + "s"

