$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/portfolio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-portfolio"
  s.version     = Spina::Portfolio::VERSION
  s.authors     = ["Design Collective"]
  s.email       = ["admin@designcollective.io"]
  s.homepage    = "http://www.designcollective.io"
  s.summary     = "Portfolio system for Spina"
  s.description = "Plugin for Spina CMS to manage portfolio on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "pg"
end
