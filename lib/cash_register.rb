class CashRegister 
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0 
  end 
  
  def add_item(cost, name, number = 1)
    self.total = cost * number
    @items << name
  end
  
  def add_item_2(cost, name, number = 1)
    self.total = cost * number

  def apply_discount 
    end 
  
  def items 
  # (self).items!?
  # returns an array containing all items that have been added
  end
  
  def void_last_transaction
  # subtracts the last transaction from the total 
  end 
  
end 

tester = CashRegister.new 
tester.add_item(4, "carrots", 4)
