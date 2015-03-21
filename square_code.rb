# http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html

def square_code(string)
  square_cols = Math.sqrt(string.length).floor
  result = string.gsub(/[" "]/, "").gsub(/[^a-zA-Z]/, "").downcase
  rows = result.scan(/.{#{square_cols}}/)
  extra = String.new
  (0...result.length).each { |i| extra << result[i] if rows.join[i] == nil }
  rows << extra
  coded_rows = Array.new
  (0...rows[0].length).each do |i|
    coded_row = String.new
    rows.each { |row| coded_row << row[i] unless row[i] == nil }
    coded_rows << coded_row
  end
  coded_rows
end

square_code("If man was meant to stay on the
ground god would have given us roots").each do |row|
  puts row
end
