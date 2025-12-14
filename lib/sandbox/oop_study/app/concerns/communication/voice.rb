module OopStudy
  module Concerns
    module Communication
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
