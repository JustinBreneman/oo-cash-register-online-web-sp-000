require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
    @item_info = Hash.new
  end

  def add_item(name, price, quantity = 1)
    @total += (price * quantity)
    quantity.times{@items << name}
    @item_info
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      total_discount = @total.to_f * (@discount.to_f/100)
      @total -= total_discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    last_item = @items[-1]
    binding.pry
  end
end
