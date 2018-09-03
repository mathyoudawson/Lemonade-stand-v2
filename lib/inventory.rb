# holds lemon + sugar inventory + $ balance + lemonade made
require_relative "market.rb"

class Inventory
  attr_accessor :sugar, :lemons, :market, :view
  # attr_reader :market

  def initialize
    @sugar = 0
    @lemons = 0
    @market = generate_prices
    @view = InventoryView.new
  end

  def generate_prices
    @market = Market​.new
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
