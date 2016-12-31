$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/members/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-members"
  s.version     = Spina::Members::VERSION
  s.authors     = ["Design Collective"]
  s.email       = ["info@designcollective.io"]
  s.homepage    = "http://www.designcollective.io"
  s.summary     = "Team Members admin plugin for Spina"
  s.description = "Plugin for Spina CMS to manage a list of team members"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "pg"
end
