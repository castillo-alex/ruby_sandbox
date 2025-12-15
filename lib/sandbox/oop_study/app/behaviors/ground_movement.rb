module OopStudy
  module Behaviors
    class GroundMovement < MovementBehavior
      attr_reader :being
  
      VALID_MOVES = %i[crawl walk run]
      
      def move(being:, movement_type:)
        raise "Cannot perform that type of movement (#{movement_type}) as a #{being.class.name.split("::").last}." unless VALID_MOVES.include?(movement_type.to_sym)
    
        puts "#{being.name} begins to #{movement_type}"
      end
    end
  end
end
