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
          background = :light_black
        end
        if piece.nil?
          print "   ".colorize(background: background) + ""
        else
          print " #{piece.look} ".colorize(background: background) + ""
        end
      end
      puts " #{8-i}" # prints the row number again
    end
    puts '   a  b  c  d  e  f  g  h'
  end

  def insert_piece(row, column, piece)
    @board[row][column] = piece
  end
end

# x = Board.new
# x.display_board
