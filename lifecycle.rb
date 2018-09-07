require 'require_all'

require_all "lib"
require_relative 'lifecycle_view'

class Lifecycle
  attr_reader :inventory, :view
  attr_accessor :money

  def initialize(starting_money)
    @game_condition = "active"
    @money = starting_money
    @inventory = Inventory.new
    @view = LifecycleView.new
  end

  def start_new_day(counter)
    view.new_day(counter, money)
    Day.new(inventory)
  end

  def process_revenue(revenue)
    @money += revenue
  end

  def active_game
    day_counter = 0
    while @game_condition == "active" do
      new_day = start_new_day(day_counter)
      new_day.simulate_day
      revnue = new_day.finalize_day
      process_revenue(revnue)
      day_counter =+ 1
    end
    view.end_game
  end
end

lemonade_stand_instance = Lifecycle.new(5)
lemonade_stand_instance.active_game

