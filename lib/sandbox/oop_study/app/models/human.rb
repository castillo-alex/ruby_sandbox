# require_relative 'being'
# require_relative 'communicate'
# require_relative '../classes/voice'

module OopStudy  
  class Human < Being
    
    attr_reader :name
    
    def initialize(name:)
      super()
      @name = name
      @ground_movement = Behaviors::GroundMovement.new(self)
      # @voice = Voice.new
    end
    
    def introduction
      speak("Hello, my name is #{name}.")
    end
        
    def eye_color
      @eye_color ||= %w[black brown blue hazel green].sample
    end

    def move
      @ground_movement.move(movement_type: %w[walk fly].sample)
    end
  end
end
  