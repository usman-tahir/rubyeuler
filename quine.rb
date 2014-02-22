# http://programmingpraxis.com/2009/02/20/a-self-reproducing-program/
# Write a program that takes no input and generates a copy of its own source text as its complete output.
# http://www.madore.org/~david/computers/quine.html

IO.foreach(__FILE__) {|line| puts line }
