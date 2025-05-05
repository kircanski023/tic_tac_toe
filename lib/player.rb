# Player Class (X or O)
class Player
  attr_reader :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    puts "#{@name} is #{symbol}"
  end

  def input
    puts "--------------"
    puts "#{@name} choose a number"
    gets.chomp.to_i
  end
end
