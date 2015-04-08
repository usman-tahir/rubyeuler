# http://programmingpraxis.com/2013/04/30/first-unrepeated-character-in-a-string/

unrepeated = -> string { (0...string.length).each { |i| return string[i] if string.count(string[i]) == 1 } }

p unrepeated["aabbcddd"]
