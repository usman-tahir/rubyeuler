# http://programmingpraxis.com/2013/09/20/mccarthys-91-function/

def m(n,level=1)
  p ("m(" * level) + "#{n}" + (")" * level)
  if n > 100
    n - 10
  else n <= 100
   m(m(n+11,level+1))
  end
end

p m(87)