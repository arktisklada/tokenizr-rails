$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tokenizr-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tokenizr-rails"
  s.version     = Tokenizr::Rails::VERSION
  s.authors     = ["arktisklada"]
  s.email       = ["mail@enorganik.com"]
  s.homepage    = "https://github.com/arktisklada/tokenizr-rails"
  s.summary     = "Adds token-based finders to ActiveRecord"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*_test.rb"]

  s.add_dependency "tokenizr", "~> 1.0.0"
  s.add_dependency "activerecord", [">= 3.0",  "< 5.0"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "sqlite3"
end