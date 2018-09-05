# calculates lemon + sugar prices

class Market​
  attr_accessor :sugar_price, :lemon_price, :lemonade_price, :view

  def initialize
    @view = MarketView.new
    generate_prices
    set_lemonade_price
  end

  def generate_lemon_price
    Random.new.rand(25..50)
  end

  def generate_sugar_price
    Random.new.rand(2..5)
  end

  def set_lemonade_price
    @lemon_price = view.set_lemonade_price
  end

  def generate_prices
    @sugar_price = generate_lemon_price
    @lemon_price = generate_sugar_price
  end
end
