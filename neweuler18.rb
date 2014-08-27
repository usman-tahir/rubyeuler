# http://projecteuler.net/problem=18

ary0 = [[75], #1
[95,64], #2
[17,47,82], #3
[18,35,87,10], #4
[20,4,82,47,65], #5
[19,1,23,75,3,34], #6
[88,2,77,73,7,63,67], #7
[99,65,4,28,6,16,70,92], #8
[41,41,26,56,83,40,80,70,33], #9
[41,48,72,33,47,32,37,16,94,29], #10
[53,71,44,65,25,43,91,52,97,51,14], #11
[70,11,33,28,77,73,17,78,39,68,17,57], #12
[91,71,52,38,17,14,91,43,58,50,27,29,48], #13
[63,66,4,68,89,53,67,30,73,16,69,87,40,31], # 14
[4,62,98,27,23,9,70,98,73,93,38,53,60,4,23]] # 15
arysolve = []

y = 13
while y > -1
  ary0[y].each_index do |index|
    x = ary0[y][index].to_i + ary0[y+1][index].to_i
    z = ary0[y][index].to_i + ary0[y+1][index+1].to_i
    if x > z
      arysolve.push x.to_i
    elsif z > x
      arysolve.push z.to_i
    else x = z
      arysolve.push x.to_i
    end
  end
  ary0[y] = arysolve
  result = arysolve
  arysolve = []
  y -= 1
end

puts result   