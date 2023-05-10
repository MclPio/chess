class Pawn
  attr_reader :color, :look

  def initialize(color, look = '♟︎')
    @color = color
    @look = look
  end

  def move
  end

  def capture
  end

  def en_passant
  end

  def possible_moves
  end
end
