# Class Board
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3) }
    default_board
  end

  def current_board
    puts "--------------"
    board.each { |item| puts "[#{item.join('][')}]" }
  end

  private

  def default_board
    count = 0
    self.board = @board.map do |item|
      item.map do |i|
        count += 1 if i.nil?
      end
    end
  end
end
