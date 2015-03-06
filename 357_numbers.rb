# http://programmingpraxis.com/2015/03/06/357-numbers/

def t_f_s?(n)
  n /= 3 while n % 3 == 0
  n /= 5 while n % 5 == 0
  n /= 7 while n % 7 == 0
  n == 1 ? 1 : 0
end

p (1..1_000_000).step(2).inject(0) { |c,n| c += t_f_s?(n) }
