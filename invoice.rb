# http://programmingpraxis.com/2015/02/17/invoice/

def pretty_print_reciept
  items = get_items 
  puts "          Praxis Grocery Store          "
  puts "              17 Feb 2015               "
  puts
  counter = 1
  subtotal = 0.0
  items.each do |item|
    title = item["name"]
    price = item["price"]
    number = item["quantity"]
    pxn = price * number
    puts "%2d %-22s %2d %.2f   %2.2f" % [counter, title, number, price, pxn]
    subtotal += pxn
    counter += 1
 end
  puts "   %-31s %2.2f" % ["Subtotal:", subtotal]
  tax = subtotal * 0.0525
  total = subtotal + tax
  puts "   %-31s  %.2f" % ["Tax 5.25%:", tax]
  puts "   %-31s %2.2f" % ["Total:", total]
end

def get_items
  stop_flag = false
  items = []
  counter = 0
  until stop_flag == true
    item = {}
    print "Enter the name of the next item: "
    item["name"] = gets.to_s.chomp
    print "Enter the quantity: "
    item["quantity"] = gets.to_i
    print "Input the price: "
    item["price"] = gets.to_f
    items[counter] = item
    counter += 1
    print "Add another item? y/n: "
    another = gets.to_s.chomp
    until another.downcase == "y" || another.downcase == "n"
      print "Enter 'y' to add another item or enter 'n' to stop: "
      another = gets.to_s.chomp
    end 
    stop_flag = true if another == "n"
  end    
  items
end

pretty_print_reciept
