class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(employee_discount = 0)
     @discount = employee_discount
     @total = 0
     @items = []
  end

  def add_item (title, price, quantity = 1)
      self.last_transaction = price * quantity
      self.total += self.last_transaction
      quantity.times do
          self.items << title
      end
  end

  def apply_discount()
      percentage_discount = (100.0 - self.discount.to_f)/100
      if (self.discount != 0)
          self.total = (self.total * percentage_discount).to_i
          "After the discount, the total comes to $#{self.total}."
      else
          "There is no discount to apply."
      end
  end

  def void_last_transaction
      self.total -= self.last_transaction
  end

end
