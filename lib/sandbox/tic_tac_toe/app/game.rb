# frozen_string_literal: true

module TicTacToe
  # Describe Game
  class Game
    private attr_reader :game_board

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
      writable = game_board.dig(row, col)
      writable == true
    end

    def mark_tile(row:, col:, mark:)
      return 'Cannot write to that tile' unless tile_writable?(row:, col:)

      game_board[row][col] = mark
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
