# holds lemon + sugar inventory + $ balance + lemonade made

class Inventory
  attr_accessor :sugar, :lemons, :market, :view, :cups
  # attr_reader :market

  def initialize
    @sugar = 0
    @lemons = 0
    @cups = 0
    @view = InventoryView.new
  end

  def process_sales(sales)

  end

  def make_lemonade
    maximum_quantity = [sugar, lemons].min
    quantity = view.make_lemonade(maximum_quantity)
    @cups += quantity.to_i
  end

  def buy_ingredients
    buy_lemons
    buy_sugar
  end

  def buy_lemons
    quantity = view.buy_lemons
    @lemons += quantity.to_i
  end

  def buy_sugar
    quantity = view.buy_sugar
    @sugar += quantity.to_i
  end
end
