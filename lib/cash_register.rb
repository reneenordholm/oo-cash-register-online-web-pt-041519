require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, qty = nil)
    qty == nil ? self.total += price : self.total += price * qty

    qty.times do
      @items << title
    end
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
    @items
  end
end