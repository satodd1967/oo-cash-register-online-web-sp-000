require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :void_last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 0)
    if quantity != 0
    self.total = self.total + price * quantity
    quantity.to_i.times {@items << title}
  else
    self.total = self.total + price
    @items << title
  end
end

  def apply_discount
    if @discount > 0
      self.total = self.total - (self.total * (@discount * 0.01))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
end

  def void_last_transaction
    self.total.pop
end

#binding pry  
end

