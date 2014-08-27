# http://rosettacode.org/wiki/Pascal%27s_triangle
start_time = Time.now
row_number_to_find = 5

def pascals_triangle(number_of_rows)
  triangle_for_row = [1]
  fractions = []
  number_of_rows_counter = number_of_rows
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

row = pascals_triangle(row_number_to_find).inspect
puts "Row number #{row_number_to_find} of Pascal's Triangle is: " + row.to_s
puts ((Time.now - start_time).to_f).to_s + "s"