class LifecycleView
  def new_day(day_counter, money)
    puts "It is day #{day_counter} and you have $#{money}"
  end

  def end_game(day_counter)
    puts "Game over. You lost on day #{day_counter}"
  end
end
