# Array.new(8) { Array.new(8, nil) }

class Board
  attr_accessor :board_array

  def initialize
    @board_array = Array.new(8) { Array.new(8, nil) }
  end

  def display_board
  end
end
