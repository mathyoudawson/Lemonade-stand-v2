# holds lemon + sugar inventory + $ balance + lemonade made
require_relative 'market.rb'

class Inventory
  attr_accessor :sugar, :lemons, :market
  # attr_reader :market

  def initialize
    @sugar = 0
    @lemons = 0
    @market = generate_prices
  end

  def generate_prices
    @market = Market.new
  end

  def buy_ingredients
    buy_lemons
    buy_sugar
  end

  def buy_lemons

  end

  def buy_sugar

  end
end
