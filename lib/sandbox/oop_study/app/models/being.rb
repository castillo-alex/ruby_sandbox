module OopStudy  
  class Being
    include Concerns::Communication::Voice

    attr_reader :date_of_birth, :date_of_death
  
    def initialize
      @date_of_birth = Date.today
      @alive = true
    end
  
    def alive?
      @alive
    end
  
    def dead?
      !alive?
    end
  
    def die
      return unless alive?
  
      mark_dead
      record_time_of_death
    end
  
    
    # *** define private methods ***
    private
  
    def mark_dead
      @alive = false
    end
  
    def record_time_of_death
      @date_of_death = Date.today
    end
  end
end
