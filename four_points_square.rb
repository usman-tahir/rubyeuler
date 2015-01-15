# http://programmingpraxis.com/2013/01/02/four-points-determine-a-square/

def is_square?(point_one,point_two,point_three,point_four)
  points = [point_one,point_two,point_three,point_four].sort
  side_length = points[1][1] - points[0][0]
  return false if points[2][0] - points[1][0] != side_length
  return false if points[3][0] - points[0][0] != side_length
  return false if points[3][1] - points[2][1] != side_length
  true
end

one = [0,0]
two = [1,1]
three = [0,1]
four = [1,0]

p is_square?(one,two,three,four)

five = [0,0]
six = [0,2]
seven = [3,2]
eight = [3,0]

p is_square?(five,six,seven,eight)

nine = [0,0]
ten = [3,4]
eleven = [8,4]
twelve = [5,0]

p is_square?(nine,ten,eleven,twelve)

thirt = [0,0]
fourt = [0,0]
fift = [1,1]
sixt = [0,0]

p is_square?(thirt,fourt,fift,sixt)

sevent = [0,0]
eighteen = [0,0]
ninet = [1,0]
twent = [0,1]

p is_square?(sevent,eighteen,ninet,twent)

two_one = [0,0]
two_two = [2,1]
two_three = [3,-1]
two_four = [1,-2]

# ugh diagonally plotted squares
p is_square?(two_one,two_two,two_three,two_four)
