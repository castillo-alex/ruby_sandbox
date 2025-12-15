# frozen_string_literal: true

module OopStudy
  module Behaviors
    # Description/Explanation of Class
    class GroundMovement < MovementBehavior
      attr_reader :being

      VALID_MOVES = %i[crawl walk run].freeze

      def move(being:, movement_type:)
        unless VALID_MOVES.include?(movement_type.to_sym)
          raise "Cannot perform that type of movement (#{movement_type}) as a #{being.class.name.split('::').last}."
        end

        puts "#{being.name} begins to #{movement_type}"
      end
    end
  end
end
