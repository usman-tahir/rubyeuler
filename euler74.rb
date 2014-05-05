# http://projecteuler.net/problem=74
starttime = Time.now

def find_factorial_chain(number)
  originalterm = number
  chainnumberterm = originalterm
  stuck_in_loop = false
  numberchain = [originalterm]
  until stuck_in_loop == true  
    temparray =[]
    #puts chainnumberterm
    chainnumberterm.to_s.split('').map(&:to_i).each do |digit|
      temparray.push 1 if digit == 0
      temparray.push (1..digit).inject(:*) if digit != 0
    end
    chainnumberterm = temparray.inject(:+)
    if numberchain.include? chainnumberterm
      stuck_in_loop = true 
    else 
      numberchain.push chainnumberterm
    end	
  end
  return numberchain.count
end	

number_chain_counts =[]
(1..999_999).each do |number|
  puts number
  number_chain_counts.push find_factorial_chain(number)
end

puts number_chain_counts.count(60)
puts ((Time.now - starttime).to_f).to_s + "s"