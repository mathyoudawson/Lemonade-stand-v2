# Works out how many people walk past

class PopulationCounter
  BASE_POPULATION = 200

  attr_reader :daily_population

  def generate_population(temperature)
    temperature_multiplier = temperature / 10
    @daily_population = BASE_POPULATION * temperature_multiplier
  end
end
