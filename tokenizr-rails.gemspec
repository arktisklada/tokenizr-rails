$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tokenizr-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "tokenizr-rails"
  spec.version     = Tokenizr::Rails::VERSION
  spec.authors     = ["arktisklada"]
  spec.email       = ["mail@enorganik.com"]
  spec.homepage    = "https://github.com/arktisklada/tokenizr-rails"
  spec.summary     = "Adds token-based finders to ActiveRecord"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.test_files = Dir["test/**/*_test.rb"]

  spec.add_dependency "tokenizr", '~> 1.0', '>= 1.0.0'
  spec.add_dependency "activerecord", [">= 3.0",  "< 5.0"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 10.1', '> 10.1.0'
  spec.add_development_dependency "minitest", "~> 5.1"
  spec.add_development_dependency "sqlite3", '~> 1.3', '>= 1.3.3'
end