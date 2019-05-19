require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize
    @total = 0
    @discount = 0
    @items = []
  end
  
  def add_item(title, price, qty = nil)
    qty == nil ? self.total += price : self.total += price * qty
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end 
  
  def items
  item_names = []
    @items.each do | item_info |
      #test expects product name * quantity...
      for qty in 1..item_info[:quantity] 
        item_names << item_info[:name]
      end 
    end 
    item_names
  end 
end