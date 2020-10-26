class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times
      @cart << item
  end

  def apply_discount
    if discount > 0
      @total = ((100 - @discount)/100) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

end
