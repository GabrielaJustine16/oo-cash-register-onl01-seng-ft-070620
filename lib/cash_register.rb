class CashRegister


  attr_accessor :discount, :total, :price
  attr_reader :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @price = (price * quantity)
    @total += @price
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * (@discount.to_f/100.to_f)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end