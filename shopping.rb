@shopping = [
            {item: 'Fruit', price: 4.25},
            {item: 'Beer', price: 6.75},
            {item: 'Toilet paper', price: 9.25},
            {item: 'Dental floss', price: 1.20}
]

@cart = []

def menu
  puts "Select Items For Your Shopping List:"
  puts
  @shopping.each_with_index { |craig, index| 
    puts "#{index + 1}) #{craig[:item]} $#{craig[:price]} "
    }
    puts
    puts "5) View Shopping Cart"
    puts "6) Checkout"
  selection
end

def selection
  name = gets.to_f
  
  if name == 1
    puts "Fruit @ $4.25 has been added to shopping cart"
    puts
    itemadded = @shopping[0]
    @cart << itemadded
  elsif name == 2
    puts "Beer @ $6.75 has been added to shopping cart"
    puts
    itemadded = @shopping[1]
    @cart << itemadded  
  elsif name == 3
    puts "Toilet Paper @ $9.25 has been added to shopping cart"
    puts
    itemadded = @shopping[2]
    @cart << itemadded  
  elsif name == 4
    puts "Dental Floss @ $1.25 has been added to shopping cart"
    puts
    itemadded = @shopping[3]
    @cart << itemadded  
  elsif name == 5
    puts "--Shopping Cart Contents--"
    if @cart.length == 0
        puts "No items have been added to cart"
    else
      for i in @cart
        puts "#{i[:item]} $#{i[:price]}"
      end
    end
  else name == 6
    puts "Checkout"
    exit
  end
  
menu

end  
    
menu
  

