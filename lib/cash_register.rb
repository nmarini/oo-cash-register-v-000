class CashRegister
  attr_accessor :total, :discount
  @@total = []

  def initialize(total = 0, discount)
    @total = total
    @discount = discount
    @@total << @total
  end
  def discount
    @discount
  end

end
