# require_relative 'being'
# require_relative 'communicate'
# require_relative '../classes/voice'
# 
# require "forwardable"

module OopStudy  
  class Human < Being
    attr_reader :name
    
    def initialize(name:)
      super()
      @name = name
      @ground_movement = Behaviors::GroundMovement.new
      # @voice = Voice.new
    end
    
    def introduction
      speak("Hello, my name is #{name}.")
    end
        
    def eye_color
      @eye_color ||= %w[black brown blue hazel green].sample
    end

    def move
      @ground_movement.move(being: self, movement_type: %w[walk run crawl].sample)
    end
  end
end
  