require 'colorize'

class Pawn
  attr_reader :color, :look

  def initialize(color)
    @color = color
    if @color == 'black'
      @look = '♟︎'
    elsif @color == 'white'
      @look = '♙'
    end
  end

  def move_once
    
  end

  def capture
  end

  def en_passant
  end

  def possible_moves
  end
end
