# require_relative 'being'
# require_relative 'communicate'

module OopStudy
  class Dog < Being
    attr_reader :name
  
    def initialize(name:)
      super()
      @name = name
    end
  
    def introduction
      speak("Woof woof!")
    end
  end
end
