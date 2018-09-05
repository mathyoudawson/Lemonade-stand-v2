# simulates the day
require 'require_all'

require_all "lib"

class Day
  attr_accessor :view, :climate, :population_counter, :inventory

  def initialize(inventory)
    @view = DayView.new
    @inventory = inventory
    inventory.generate_prices
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
  end

  def display_results

  end

  def finalize_day
    generate_sales
    display_results
  end
end
