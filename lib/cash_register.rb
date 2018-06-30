
class CashRegister
attr_accessor :total, :discount, :title, :price, :total, :quantity, :last, :lastprice
@@all = []
@quantity = 0

def initialize(discount = 0)
@total = 0
@discount = discount
end

def add_item(title, price, quantity = 1)
@title = title
@price = price
@quantity = quantity
@total += price * quantity
@@all << @title
@last = title
@lastprice = price
end

def apply_discount
@total = (1 - (@discount/100.0)) * @total
if @total == 0
  "There is no discount to apply."
  else
    "After the discount, the total comes to $#{@total.round}."
  end
end

def items
@@all.uniq
end

def void_last_transaction
 @total -= @price * @quantity
end

end
