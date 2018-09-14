# Works out how many people walk past

class PopulationCounter
  BASE_POPULATION = 200
  MIN_POPULATION = 20

  attr_reader :daily_population, :view

  def initialize
    @view = PopulationCounterView.new
  end

  def generate_population(temperature)
    temperature_multiplier = temperature / 10
    @daily_population = BASE_POPULATION * temperature_multiplier
    if daily_population < 20
      @daily_population = MIN_POPULATION
    end
    view.display_daily_population(daily_population)
  end
end
