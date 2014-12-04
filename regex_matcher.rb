# http://programmingpraxis.com/2009/09/11/beautiful-code/
# warning: hacky, non-beautiful version!
require 'minitest/autorun'

# match literal chars
# match dot for any char
# * for 0 or more of a char
# ^ to begin string
# $ to end string
# match: search for re anywhere in text

def match(re,text)
  case
  when re[0] == '^' && re[-1] == '$'
    re_array = re[1..-2].split(//)
    return false if re_array.count != text.length
    matcher(re_array,text)  
  when re[0] == '^'
    re_array = re[1..-1].split(//)
    matcher(re_array,text)
  when re[-1] == "$"
    re_array = re[0..-2].split(//)
    (-re_array.count..-1).each do |index|
      next if re_array[index] == '.'
      return false if re_array[index] != text[index]
    end
    return true  
  else
    text.include?(re)    
  end     
end

def matcher(re_array,text)
  re_array.each_index do |index|
    next if re_array[index] == '.'
    return false if re_array[index] != text[index]
  end
  return true
end

class TestMatch < MiniTest::Unit::TestCase

  def test_match
    assert match('foo','foo')
  end

  def test_carrot
    assert match('^f.o','food') 
  end
  
  def test_dollar_sign
    assert match('ood$','food')
  end
  
  def test_carrot_and_dollar_sign
    assert match('^foo$','foo')
  end
  
  def test_includes_match
    assert match('foo','i am a foodie')
  end
  
  def test_non_match
    assert !match('foo','bar')
  end
  
  def test_non_match_carrot
    assert !match('^foo','i am a foodie')
  end
  
  def test_non_match_dollar_sign
    assert !match('food$','i am a foodie')
  end
  
  def test_non_match_carrot_dollar
    assert !match('^foo$','food')
  end        
end    