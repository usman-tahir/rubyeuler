# http://programmingpraxis.com/2010/12/31/arithmetic-drill/

def random_arithmetic_equation
  a = rand(100)
  b = rand(100)
  c = a + b
  return ["#{a} + #{b} = ", c]
end

def main
  quit_flag = false
  until quit_flag == true
    problem = random_arithmetic_equation
    print problem[0]
    answer = gets.chomp
    until answer.to_i == problem[1] || answer.to_s == "?"
      puts "Wrong, try again!"
      print problem[0]
      answer = gets.chomp
    end
    puts answer.to_i == problem[1] ? "Right!" : problem[1]
  end
end

main