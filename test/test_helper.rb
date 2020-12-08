# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
ENV["BUNDLE_GEMFILE"] = File.expand_path("./dummy/Gemfile", __dir__)

require_relative "dummy/config/environment"
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
