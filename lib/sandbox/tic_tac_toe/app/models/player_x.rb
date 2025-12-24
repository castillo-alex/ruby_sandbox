# frozen_string_literal: true

module TicTacToe
  # Describe PlayerX class
  class PlayerX < Player
    attr_reader :game, :mark, :row, :col

    def initialize(game:, player_number:)
      super(game:, player_number:, mark:)
      @game = game
      @mark = 'X'
    end

    def write_to_board(game:, mark:, row:, col:)
      super(game:, mark:, row:, col:)
    end
  end
end
