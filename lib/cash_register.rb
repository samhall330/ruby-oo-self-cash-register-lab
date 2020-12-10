class CashRegister

attr_accessor :total, :discount, :item


def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times{@items << title} 
    @price = quantity * price
end   

def apply_discount
    if @discount == 0
        "There is no discount to apply."
    else 
    @total = @total - @total * @discount/100
     "After the discount, the total comes to $#{@total}."
    end
end

def items
@items
end

def void_last_transaction
    @total -= @price
    
end


end