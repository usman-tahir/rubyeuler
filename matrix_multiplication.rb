# http://rosettacode.org/wiki/Matrix_multiplication
require 'matrix'

def multiply(matrix_one,matrix_two)
  matrix_one * matrix_two
end

a = Matrix[[2,4], [6,8]]
b = Matrix.identity(2)

p multiply(a,b)
