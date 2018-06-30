
class CashRegister
attr_accessor :total, :discount, :title, :price, :total, :quantity

@quantity = 0

def initialize(discount = 0)
@total = 0
@discount = discount
end

def add_item(title, price, quantity = 1)
@title = title
@price = price
@total += price * quantity
end

def apply_discount
@total = (1 - (@discount/100)) * @total
end



end
