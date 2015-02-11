# http://programmingpraxis.com/2015/02/10/project-euler-problem-1/

# iterates with enumerable
def euler_one_one(n,counter=0)
  (1...n).each { |number| counter += number if (number % 3 == 0 || number % 5 == 0) }
  counter
end

# recursive one liner
def euler_one_two(n,c=0,i=0)
  n == 1 ? c : (n % 3 == 0 || n % 5 == 0) && i != 0 ? euler_one_two(n-1,c+n,i+1) : euler_one_two(n-1,c,i+1)
end

# nested methods, map array
def euler_one_three(n)
  def three(x)
    x % 3 == 0
  end
  def five(x)
    x % 5 == 0
  end
  (1...n).collect { |i| i if (three(i) || five(i)) }.compact.inject(:+)
end

p euler_one_one(1000)
p euler_one_two(1000)
p euler_one_three(1000)
