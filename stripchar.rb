# http://rosettacode.org/wiki/Strip_a_set_of_characters_from_a_string
start_time = Time.now
test_string = "She was a soul stripper. She took my heart!"
characters = "aei"


def stripchars(string, chars)
  char_array = chars.split(//).map
  char_array.each do |char|
    string.delete! char
  end
  string
end

puts stripchars(test_string,characters)
puts ((Time.now-start_time).to_f).to_s + "s"

