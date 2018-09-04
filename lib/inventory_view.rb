class InventoryView
  def buy_lemons
    puts "How many lemons would you like to purchase?"
    gets.chomp
  end

  def buy_sugar
    puts "How much sugar would you like to purchase?"
    gets.chomp
  end

  def make_lemonade(maximum_quantity)
    puts "You can make a maximum of #{maximum_quantity} cups. How many would you like to make?"
    gets.chomp
  end
end
