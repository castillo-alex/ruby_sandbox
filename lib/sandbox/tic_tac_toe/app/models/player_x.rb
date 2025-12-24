# frozen_string_literal: true

module TicTacToe
  # Describe PlayerX class
  class PlayerX < Player
    def initialize(game:, player_number:)
      super(game:, player_number:, mark: 'X')
    end
  end
end
