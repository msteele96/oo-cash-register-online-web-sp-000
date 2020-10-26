class CashRegister

  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @total += price
  end

end
