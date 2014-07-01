# http://rosettacode.org/wiki/Catalan_numbers/Pascal%27s_triangle
# The task is to print out the first 15 Catalan numbers by extracting them from Pascal's triangle
start_time = Time.now

def pascals_triangle(row_to_find)
  triangle_for_row = [1]
  fractions = []
  number_of_rows_counter = row_to_find
  denominator_counter = 1
  until number_of_rows_counter == 0
    fractions << (number_of_rows_counter.to_r/denominator_counter.to_r)
    number_of_rows_counter -= 1
    denominator_counter += 1
  end	
  fractions.each do |fraction|
    triangle_for_row << (fraction * triangle_for_row[-1]).to_i
  end
  triangle_for_row	
end

def catalan_numbers(number_to_find)
  catalan_numbers_array = []
  counter = 2
  until catalan_numbers_array.count == number_to_find
    pascal_row = pascals_triangle(counter)
    mid_index = pascal_row.find_index(pascal_row.max)
    catalan_numbers_array << (pascal_row[mid_index] - pascal_row[mid_index+1])
    counter += 2
  end
  catalan_numbers_array
end

puts catalan_numbers(15).inspect

puts ((Time.now-start_time).to_f).to_s + "s"
