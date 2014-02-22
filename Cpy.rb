# http://programmingpraxis.com/2009/02/20/a-self-reproducing-program/
# Write a program that takes no input and generates a copy of its own source text as its complete output.

puts "Copying myself!"

name = __FILE__
name2 = "Nu" + name

input = File.open(name)
indata = input.read()
output = File.open(name2, 'w')
output.write(indata)

puts "Ok, copied!"

output.close()
input.close()