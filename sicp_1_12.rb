# http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2
# exercise 1.12: calculate elements from pascal's triangle recursively

def pascals_element(row,column)
  if column == 0
    1
  elsif column == row
    1
  else
    pascals_element(row-1,column-1) + pascals_element(row-1,column)
  end
end

p pascals_element(0,0)
p pascals_element(1,0)
p pascals_element(4,2)
