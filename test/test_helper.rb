require "minitest/autorun"
require "tokenizr"
require "tokenizr-rails"

Dir[File.dirname(__FILE__) + "/models/*.rb"].each { |file| require file }

ActiveSupport::TestCase.test_order = :random

DB_FILE = "tmp/test_db"
FileUtils.mkdir_p File.dirname(DB_FILE)
FileUtils.rm_f DB_FILE

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => DB_FILE

load "schema.rb"