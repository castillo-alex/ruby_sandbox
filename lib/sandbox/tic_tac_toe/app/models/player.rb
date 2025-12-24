# frozen_string_literal: true

module TicTacToe
  # Describe Player
  class Player
    attr_reader :game, :mark

    def initialize(game:, mark:)
      @game = game
      @mark = mark
    end

    def write_to_board(row:, col:)
      game.mark_tile(row:, col:, mark:)
    end
  end
end
