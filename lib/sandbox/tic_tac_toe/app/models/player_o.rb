# frozen_string_literal: true

module TicTacToe
  # Describe PlayerO class
  class PlayerO < Player
    def initialize(game:, player_number:)
      super(game:, player_number:, mark: 'O')
    end
  end
end
