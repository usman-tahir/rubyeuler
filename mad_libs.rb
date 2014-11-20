# http://rosettacode.org/wiki/Mad_Libs

def mad_libs_output(name,pronoun,noun)
  puts "#{name.capitalize} went for a walk in the park. #{pronoun.capitalize}"
  puts "found a #{noun}. #{name.capitalize} decided to take it home."
end

puts "enter a name: "
name = gets.chomp

puts "enter #{name}'s pronoun: "
pronoun = gets.chomp

puts "enter a noun: "
noun = gets.chomp

mad_libs_output(name,pronoun,noun)


