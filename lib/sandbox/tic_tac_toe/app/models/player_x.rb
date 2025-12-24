# frozen_string_literal: true

module TicTacToe
  # Describe PlayerX class
  class PlayerX < Player
    def initialize(game:)
      super(game:, mark: 'X')
    end
  end
end
