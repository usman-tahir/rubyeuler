# http://rosettacode.org/wiki/The_Twelve_Days_of_Christmas

lyrics = ["a partridge in a pear tree.",
          "two turtle doves,",
          "three french hens,",
          "four calling birds,",
          "five golden rings,",
          "six geese a-laying,",
          "seven swans a-swimming,",
          "eight maids a milking,",
          "nine ladies dancing,",
          "ten lords a-leaping,",
          "eleven pipers piping,",
          "twelve drummers drumming,"]

ordinals = ["first",
            "second",
            "third",
            "fourth",
            "fifth",
            "sixth",
            "seventh",
            "eighth",
            "ninth",
            "tenth",
            "eleventh",
            "twelfth"]

ordinals.each_with_index do |ordinal,index|
  puts "On the #{ordinal} day of Christmas,"
  puts "My true love gave to me:"
  index.downto(0).each do |lyrics_index|
    if lyrics_index == 0 && ordinal != "first"
      puts "And #{lyrics[lyrics_index]}"
    else
      puts lyrics[lyrics_index].capitalize
    end    
  end
  puts
end  
    