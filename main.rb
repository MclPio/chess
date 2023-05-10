require_relative "lib/pawn"
require_relative "lib/board"

board = Board.new
pawn1 = Pawn.new('white')
board.insert_piece(1, 0, pawn1)
board.display_board