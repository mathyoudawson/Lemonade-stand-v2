# simulates the day

class Day
  def initialize
    @game_condition = "active"

  end

  def simulate_day
    buy_ingredients
    make_lemonade
    generate_temperature
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
