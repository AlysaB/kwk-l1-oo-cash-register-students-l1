# Code your cash register here!
class AmazonTransaction
  def initialize(discount = 0)
    @total = 0 
    @items = []
    @prices =[]
    @discount = discount
  end 
  
  def total
  @total 
  end 
  @total = 0 
  @total +=1 
  
 def add_item (item, price, quantity = 1)
   @total += (price * quantity)
   for i in 1..quantity 
   @items << item
   @prices << price
     end 
  end 
 
 def apply_discounts 
  if @discount > 0 
   @total -= @discount 
   puts "After the discount, the total comes to $#{@total}"
  else 
   puts "There is no discount to apply"
 end
end 

 def items 
  @items 
 end 
 
def prices
  @prices
end
end


puts "How much is the discount applied(in dollars)?"
discount = gets.chomp.to_i 
 new_register = AmazonTransaction.new(discount)
 
 loop do 
   puts "Item"
   item = gets.chomp.to_s 
   
   price = 1 + rand(100)

   puts "Quantity"
   quantity = gets.chomp.to_i 
   new_register.add_item(item, price, quantity)
 
 puts "If you're done type: done, else type: no"
 answer = gets.chomp.downcase 
     if answer == "done"
       puts ""
       puts "Receipt"
       thing = 0
       new_register.items.each do |item|
         puts "#{item}        $#{new_register.prices[thing]}"
         thing += 1 
       end 
       
       puts "Total without the discount: $#{new_register.total}"
       new_register.apply_discounts
       break
     end 
 end 
 #puts #{new_register.items
 #new_register.apply_discounts
 
 
 
 #new_register.add_item("dog toy", 2.96, 3)
 #new_register.add_item("speaker", 26.66, 1)
 #new_register.add_item("chair", 35.74, 4)
 #new_register.apply_discounts
 #puts new_register.items
 #puts new_register.total