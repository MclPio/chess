require 'colorize'

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8, nil) }
  end

  def display_board
    puts '   a  b  c  d  e  f  g  h'
    @board.each_with_index do |row, i|
      print "#{8-i} " # prints the row number
      row.each_with_index do |piece, j|
        if (i + j) % 2 == 0
          background = :light_white
        else
          background = :magenta
        end
        if piece.nil?
          print "   ".colorize(background: background) + ""
        else
          print " #{piece.look} ".colorize(background: background, color: piece.color.to_sym) + ""
        end
      end
      puts " #{8-i}" # prints the row number again
    end
    puts '   a  b  c  d  e  f  g  h'
  end

  def insert_piece(row, column, piece)
    @board[row][column] = piece
  end

  def algebraic_to_indices(algebraic_notation)
    row = 8 - algebraic_notation[1].to_i
    column = algebraic_notation[0].ord - 'a'.ord
    [[row], [column]]
  end
end

# x = Board.new
# x.display_board
# p x.algebraic_to_indices('h8')
# p x.algebraic_to_indices('h1')
# p x.algebraic_to_indices('a1')
# p x.algebraic_to_indices('a8')