# Class Board
class Board
  def initialize
    @write = Array.new(3) { Array.new(3) }
  end

  def display_board
    default_board.each do |item|
      puts "[#{item.join('][')}]"
    end
  end

  private

  def default_board
    count = 0
    @write.map do |item|
      item.map do |i|
        count += 1 if i.nil?
      end
    end
  end
end
