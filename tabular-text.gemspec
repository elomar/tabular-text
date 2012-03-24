$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tabular-text/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tabular-text"
  s.version     = TabularText::VERSION
  s.authors     = ["Elomar Souza"]
  s.email       = ["elomar@elomar.me"]
  s.homepage    = "http://github.com/elomar/tabular-text"
  s.summary     = "Generate position-based text files"
  s.description = "You know those times when you're dealing with a 10-year-old government API and they require a text file
    where every field has to be in a certain position? TabularText for the rescue!"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.require_path = "lib"

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "capybara"
end
