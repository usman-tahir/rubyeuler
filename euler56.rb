# http://projecteuler.net/problem=56
runtime = Time.new

def digital_sum
  a = 1
  b = 1
  store = Array.new # each new number arrayed
  val = Array.new # store larger array
  stbox = Array.new # sum store array
  valbox = Array.new # sum val array
  val = [0]
  for a in 1..100
    for b in 1..100
      num = a ** b
      store = num.to_s.split('').map(&:to_i)
      stbox = store.inject(:+)
      valbox = val.inject(:+)
      if stbox > valbox
       val = store
      else
      end
    end
  end
  puts valbox
end

digital_sum

printf("%.4f s\n", Time.new - runtime)
