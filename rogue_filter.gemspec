$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rogue_filter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rogue_filter"
  s.version     = RogueFilter::VERSION
  s.authors     = ["Corey Schaf"]
  s.email       = ["cschaf@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RogueFilter."
  s.description = "TODO: Description of RogueFilter."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
