# frozen_string_literal: true

module TicTacToe
  # Describe Player
  class Player
    private attr_reader :game, :mark, :player_number

    def initialize(game:, mark:, player_number:)
      @game = game
      @mark = mark
      @player_number = player_number
    end

    def write_to_board(game:, mark:, row:, col:)
      game.mark_tile(row:, col:, mark:)
    end
  end
end
