class CashRegister
  attr_accessor :total, :discount
  @@total = []

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
    @@total << @total
  end

end
