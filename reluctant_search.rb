# http://programmingpraxis.com/2015/04/03/reluctant-search/

def research(a, x, i=0, j=a.count-1)
  return -1 if i > j
  return x == a[i] ? i : -1 if i == j
  m = (i+j)/2
  if x <= a[m]
    k = research(a,x,i,m)
    k == -1 ? research(a,x,i,m) : k
  else
    k = research(a,x,m+1,j)
    k == -1 ? research(a,x,m+1,j) : k
  end
end 

list = [1,2,3,5,6]

p research(list,3)
p research(list,4)
