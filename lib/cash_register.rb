class CashRegister
  attr_accessor :total, :discount


  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount

  end

  def add_item(title, price, quantity = nil)
    new_price = quantity != nil ? price * quantity : price
    @total = @total + new_price
  end

  def apply_discount
    discount_total = @discount / @total
    @total = Integer(discount_total - @total)
    "After the discount, the total comes to #{@total}."
  end




end
