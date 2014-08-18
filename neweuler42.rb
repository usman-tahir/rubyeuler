# http://projecteuler.net/problem=42
LETTERS_ARRAY = ('A'..'Z').to_a

def is_triangle?(number)
  (Math.sqrt((8 * number) + 1) - 1) / 2 % 1 == 0
end

def convert_word_to_number(word)
  int_counter = 0
  word.each_char do |char|
    next if !LETTERS_ARRAY.include?(char)
    int_counter += (LETTERS_ARRAY.index(char) + 1)
  end
  int_counter  
end

def test_words_txt_for_coded_triangle_numbers
  triangle_numbers_counter = 0
  f = IO.readlines("p042_words.txt",sep=",")
  f.each do |word|
    triangle_numbers_counter += 1 if is_triangle?(convert_word_to_number(word.chop))
  end
  triangle_numbers_counter  
end

puts test_words_txt_for_coded_triangle_numbers