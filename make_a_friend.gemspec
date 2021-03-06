$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "make_a_friend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "make_a_friend"
  s.version     = MakeAFriend::VERSION
  s.authors     = ["Ewan"]
  s.email       = ["ewan.s@cucumberwifi.io"]
  s.homepage    = "https://ewansheldon.eu"
  s.summary     = "Summary of MakeAFriend."
  s.description = "Description of MakeAFriend."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
