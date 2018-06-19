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
    discount_total = @total * @discount
    @total = Integer(@total - discount_total)
    "After the discount, the total comes to #{@total}."
  end




end
