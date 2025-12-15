# frozen_string_literal: true

module OopStudy
  module Concerns
    module Communication
      # Description/Explanation of Module
      module Voice
        # Provides vocal communication capabilities to beings.
        # Behavior will be added when communication rules are defined.
        def speak(message)
          puts "#{name} says: #{message}"
        end
      end
    end
  end
end
