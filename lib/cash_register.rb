class CashRegister

  attr_accessor :total

  def initialize(discount = 20)
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount

  end

end
