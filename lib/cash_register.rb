class CashRegister
  attr_accessor
  @@total = []

  def initialize(total = 0)
    @total = total
    @@total << @total
  end

end
