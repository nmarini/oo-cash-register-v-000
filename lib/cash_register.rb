class CashRegister
  attr_accessor :total, :discount
  @@total = []

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @@total << @total
  end

  def discount
    @discount
  end

  def add_item(title, price = nil)
    @total = @total * price
  end



end
