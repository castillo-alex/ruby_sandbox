# frozen_string_literal: true

module TicTacToe
  # Describe PlayerO class
  class PlayerO < Player
    def initialize(game:)
      super(game:, mark: 'O')
    end
  end
end
