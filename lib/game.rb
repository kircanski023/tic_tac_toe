# Game class
class Game
  attr_accessor :new_board

  def initialize
    @new_board = Board.new
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
  end

  def write_x(input)
    @new_board.board = @new_board.board.map do |item|
      item.map { |i| i == input ? @player1.symbol : i }
    end
    @new_board.current_board
  end

  def write_o(input)
    @new_board.board = @new_board.board.map do |item|
      item.map { |i| i == input ? @player2.symbol : i }
    end
    @new_board.current_board
  end

  def x_input
    @player1.input
  end

  def o_input
    @player2.input
  end

  def game_loop
    new_board.current_board.any? { |i| i.any? { |item| item.is_a?(Integer) } }
  end

  def dig(first, second)
    new_board.board.dig(first, second)
  end

  def condition1
    puts "Winner is #{dig(0, 0)}" if (dig(0, 0) == dig(1, 0) && dig(0, 0) == dig(2, 0)) == true
    dig(0, 0) == dig(1, 0) && dig(0, 0) == dig(2, 0)
  end

  def condition2
    puts "Winner is #{dig(0, 1)}" if (dig(0, 1) == dig(1, 1) && dig(0, 1) == dig(2, 1)) == true
    dig(0, 1) == dig(1, 1) && dig(0, 1) == dig(2, 1)
  end

  def condition3
    puts "Winner is #{dig(0, 2)}" if (dig(0, 2) == dig(1, 2) && dig(0, 2) == dig(2, 2)) == true
    dig(0, 2) == dig(1, 2) && dig(0, 2) == dig(2, 2)
  end

  def condition4
    puts "Winner is #{dig(0, 0)}" if (dig(0, 0) == dig(0, 1) && dig(0, 0) == dig(0, 2)) == true
    dig(0, 0) == dig(0, 1) && dig(0, 0) == dig(0, 2)
  end

  def condition5
    puts "Winner is #{dig(1, 0)}" if (dig(1, 0) == dig(1, 1) && dig(1, 0) == dig(1, 2)) == true
    dig(1, 0) == dig(1, 1) && dig(1, 0) == dig(1, 2)
  end

  def condition6
    puts "Winner is #{dig(2, 0)}" if (dig(2, 0) == dig(2, 1) && dig(2, 0) == dig(2, 2)) == true
    dig(2, 0) == dig(2, 1) && dig(2, 0) == dig(2, 2)
  end

  def condition7
    puts "Winner is #{dig(0, 0)}" if (dig(0, 0) == dig(1, 1) && dig(0, 0) == dig(2, 2)) == true
    dig(0, 0) == dig(1, 1) && dig(0, 0) == dig(2, 2)
  end

  def condition8
    puts "Winner is #{dig(0, 2)}" if (dig(0, 2) == dig(1, 1) && dig(0, 2) == dig(2, 0)) == true
    dig(0, 2) == dig(1, 1) && dig(0, 2) == dig(2, 0)
  end
end
