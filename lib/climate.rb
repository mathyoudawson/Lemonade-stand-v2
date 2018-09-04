# works out how hot the day is based on the last one
# require_relative "climate_view.rb"

class Climate​
  attr_accessor :temperature, :random_generator, :view

  def initialize
    initial_temperature
    @random_generator = Random.new
    @view = ClimateView.new
  end

  def initial_temperature
    @temperature = rand(35)
    puts temperature
  end

  def random_multiplier
    random_generator.rand(0.5..1.5)
  end

  def generate_temperature
    @temperature = temperature * random_multiplier
    view.forecast(temperature)
  end
end
