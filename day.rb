# simulates the day
require 'require_all'

require_all "lib"

class Day
  attr_accessor :view, :inventory, :climate

  def initialize
    @game_condition = "active"
    @view = DayView.new
    @inventory = Inventory.new
    @climate = Climate​.new
  end

  def simulate_day
    inventory.buy_ingredients
    inventory.make_lemonade
    climate.generate_temperature
    generate_sales
    display_results
  end

  def active_game
    while @game_condition == "active" do
      simulate_day
    end
  end
end

lemonade_stand_instance = Day.new
lemonade_stand_instance.active_game
