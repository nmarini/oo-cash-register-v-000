class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = nil)
    new_price = quantity != nil ? price * quantity : price
    @total = @total + new_price
    quantity.times{items << title}
  end

  def apply_discount
    discount_total = @total * @discount
    @total = @total - discount_total.to_i
    "After the discount, the total comes to #{@total}."
  end




end
