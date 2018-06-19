class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
   self.total += amount * quantity
   quantity.times do
     items << title
   end
   
 end

  def apply_discount
    discount_total = @total * @discount
    @total = @total - discount_total.to_i
    "After the discount, the total comes to #{@total}."
  end




end
