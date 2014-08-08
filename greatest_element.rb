# http://rosettacode.org/wiki/Greatest_element_of_a_list
stop_flag = false
list_of_items = []

until stop_flag == true
  print "Enter the next item, or type 'stop' to stop: "
  item = gets.chomp
  case
  when item == 'stop'
    stop_flag = true
  else
    list_of_items << item.to_i
  end
end

puts "The greatest element is #{list_of_items.max}."    	