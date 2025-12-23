# frozen_string_literal: true

require 'pry-byebug'
module TicTacToe
  # Description of GameBoard
  class GameBoard
    attr_accessor :game_board, :tile

    def initialize
      @game_board = Array.new(3) { Array.new([true, true, true]) }
    end

    def writable?(row:, col:)
      row = game_board[row]
      return false if row.nil?

      col = row[col]
      return false if col.nil?

      true
    end
  end
end

binding.pry
