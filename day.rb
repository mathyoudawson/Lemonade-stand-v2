# simulates the day
require 'require_all'

require_all "lib"

class Day
  attr_accessor :view, :inventory, :climate, :population_counter

  def initialize
    @game_condition = "active"
    @view = DayView.new
    @inventory = Inventory.new
    @climate = Climate​.new
    @population_counter = PopulationCounter.new
  end

  def generate_sales
    price = inventory.get_lemonade_price
    population = population_counter.daily_population
    sales = population * price
    inventory.process_sales(sales)
  end

  def simulate_day
    inventory.buy_ingredients
    inventory.make_lemonade
    climate.generate_temperature
    population_counter.generate_population(climate.temperature)
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
