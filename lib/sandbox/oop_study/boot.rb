# frozen_string_literal: true

require 'date'

# Documentation for Module
module OopStudy
end

require_relative 'app/behaviors/movement_behavior'
require_relative 'app/behaviors/ground_movement'
require_relative 'app/concerns/communication/voice'
require_relative 'app/models/being'
require_relative 'app/models/dog'
require_relative 'app/models/human'

# APP_ROOT = "./oop_study"

# # behaviors
# Dir[File.join(APP_ROOT, "app/behaviors/**/*.rb")].sort.each { |f| require f }

# # then concerns
# Dir[File.join(APP_ROOT, "app/concerns/**/*.rb")].sort.each { |f| require f }

# # then models
# Dir[File.join(APP_ROOT, "app/models/**/*.rb")].sort.each { |f| require f }
