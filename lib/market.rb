# calculates lemon + sugar prices

class Market​
  attr_accessor :sugar_price, :lemon_price

  def initialize
    generate_prices
  end

  def generate_lemon_price
    Random.new.rand(25..50)
  end

  def generate_sugar_price
    Random.new.rand(2..5)
  end

  def generate_prices
    @sugar_price = generate_lemon_price
    @lemon_price = generate_sugar_price
  end
end
