class MarketView
  def set_lemonade_price
    puts 'How much would you like to charge per lemonade?'
    gets.chomp.to_i
  end
end
