# http://rosettacode.org/wiki/Price_fraction

def price_fraction(floating_pt_nm)
  case
  when floating_pt_nm >= 0.00 && floating_pt_nm < 0.06
    0.10
  when floating_pt_nm >= 0.06 && floating_pt_nm < 0.11
    0.18
  when floating_pt_nm >= 0.11 && floating_pt_nm < 0.16
    0.26
  when floating_pt_nm >=  0.16 && floating_pt_nm <  0.21  
    0.32
  when floating_pt_nm >=  0.21  && floating_pt_nm <  0.26 
    0.38
  when floating_pt_nm >=  0.26  && floating_pt_nm <  0.31  
    0.44
  when floating_pt_nm >=  0.31  && floating_pt_nm <  0.36  
    0.50
  when floating_pt_nm >=  0.36  && floating_pt_nm <  0.41  
    0.54
  when floating_pt_nm >=  0.41  && floating_pt_nm <  0.46  
    0.58
  when floating_pt_nm >=  0.46  && floating_pt_nm <  0.51  
    0.62
  when floating_pt_nm >=  0.51  && floating_pt_nm <  0.56  
    0.66
  when floating_pt_nm >=  0.56  && floating_pt_nm <  0.61  
    0.70
  when floating_pt_nm >=  0.61  && floating_pt_nm <  0.66  
    0.74
  when floating_pt_nm >=  0.66  && floating_pt_nm <  0.71  
    0.78
  when floating_pt_nm >=  0.71  && floating_pt_nm <  0.76  
    0.82
  when floating_pt_nm >=  0.76  && floating_pt_nm <  0.81  
    0.86
  when floating_pt_nm >=  0.81  && floating_pt_nm <  0.86  
    0.90
  when floating_pt_nm >=  0.86  && floating_pt_nm <  0.91  
    0.94
  when floating_pt_nm >=  0.91  && floating_pt_nm <  0.96  
    0.98
  when floating_pt_nm >=  0.96  && floating_pt_nm <  1.01  
    1.00
  else
    raise "Something went wrong!" 
  end
end

def test_values
  test_vals =[]
  (0..99).each do |number|
    test_vals << number/100.to_f
  end
  test_vals
end

test_values.each do |value|
  puts "#{value} -> #{price_fraction(value).to_f}"
end 




