# frozen_string_literal: true

module TicTacToe
  module Behaviors
    module PlayerBehavior
      # Describe MarkingBehavior
      class MarkingBehavior
        def mark(player)
          raise NotImplementedError
        end
      end
    end
  end
end
