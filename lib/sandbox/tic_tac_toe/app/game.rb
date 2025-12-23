# frozen_string_literal: true

require 'pry-byebug'
module TicTacToe
  # Describe Game
  class Game
    private attr_accessor :game_board

    def initialize
      @game_board = Array.new(3) { Array.new([true, true, true]) }
    end

    def print_game_board
      rows = map_rows(game_board:)
      parse_rows = parse_rows(rows:)
      puts normalize_board(parse_rows:)
      self
    end

    def tile_writable?(row:, col:)
      # dig avoids throwing NoMethodError when first array passed does not exist
      tile_mark = game_board.dig(row, col)
      tile_mark == true
    end

    private

    def map_rows(game_board:)
      game_board.map do |row|
        row.join(' | ')
      end
    end

    def parse_rows(rows:)
      rows.join("\n---------\n")
    end

    def normalize_board(parse_rows:)
      parse_rows.gsub('true', ' ')
    end
  end
end

binding.pry
