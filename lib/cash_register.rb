class CashRegister
  attr_accessor :total, :discount
  @@total = []

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @@total << @total
  end

  def add_item(title, price, quantity = nil)
    @total = @total + price * quantity
  end



end
