# http://rosettacode.org/wiki/Identity_matrix
require 'matrix'

def create_identity_matrix(number)
  Matrix.identity(number)
end

def print_identity_matrix(number) 
  a = create_identity_matrix(number)
  row_limit = a.row_count
  (0...row_limit).each do |row_number|
    puts a.row(row_number)
  end
end   

print_identity_matrix(ARGV[0].to_i) 
