# http://programmingpraxis.com/2009/09/11/beautiful-code/
# warning: hacky, non-beautiful version!
require 'minitest/autorun'

# match literal chars
# match dot for any char
# * for 0 or more of a char
# ^ to begin string
# $ to end string
# match: search for re anywhere in text

def trex(regex,text)
  match(regex.split(//),text.split(//))
end

def match(regex,text)
  p "called match(#{regex},#{text})"
  case
  when regex == nil
    return true
  when text == nil
    return false  
  when regex[0] == '^'
    match_here(regex[1..-1],text)
  else 
    if match_here(regex,text) != nil
      match_here(regex,text)
    else
      match(regex[1..-1],text[1..-1])
    end  
  end  
end

def match_here(regex,text)
  p "called match_here(#{regex},#{text})"
  case
  when regex == nil
    return true
  when regex.count == 1 && regex[-1] == text[regex.index(regex[-1])]
    return true  
  when regex.count > 1 && regex[1] == '*'
    match_star(regex[0],regex[1..-1],text)
  when regex[0] == '$' && regex[1] == nil
    text == nil
  when text.count > 1 && regex[0] != text[0] #regex[0] == '.' || regex[0] == text[0]
    return false
  when text.count > 1 && regex[0] == text[0] #regex[0] == '.' || regex[0] == text[0]
    match_here(regex[1..-1],text[1..-1])
  when regex
    return false
  end          
end

def match_star(c,regex,text)
  p "called match_star(#{c},#{regex},#{text})"
  case
  when match_here(regex,text)
    return true
  when text.count > 1 && (text[0] == c || c == '.')
    match_star(c,regex,text[1..-1])
  else
    return false
  end
end  

p trex('foo','bar')    
p trex('foo','foo')

class TestMatch < MiniTest::Unit::TestCase

  #def test_match
  #  assert trex('foo','foo')
  #end
  #
  #def test_carrot
  #  assert trex('^f.o','food') 
  #end

  #def test_star
  #  assert trex('fo*','food')
  #end  
  
  #def test_dollar
  #  assert trex('ood$','food')
  #end
  #
  #def test_carrot_and_dollar
  #  assert trex('^foo$','foo')
  #end
  #
  #def test_non_match
  #  assert trex('foo','bar')
  #end
  
  #def test_non_match_carrot
  #  assert !trex('^foo','seafood')
  #end
  
  #def test_non_match_dollar
  #  assert !trex('food$','foodways')
  #end
  
  #def test_non_match_carrot_dollar
  #  assert !trex('^foo$','food')
  #end        
end    


