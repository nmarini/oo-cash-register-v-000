class CashRegister
  attr_accessor :total, :discount
  @@total = []

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @@total << @total
  end

  def add_item(title, price, quantity = nil)
    new_price = quantity != nil ? price * quantity : price
    @total = @total + new_price
  end

  def apply_discount
    discount_total = @total * @discount
    new_total = @total - discount_total
    "After the discount, the total comes to #{new_total}"
  end




end
