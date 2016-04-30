require "test_helper.rb"
require "tokenizr_rails/finders"

class FinderTest  < ActiveSupport::TestCase
  test "finds by the id" do
    model = TestModel.create!

    assert_equal TestModel.find(model.id), model
    assert_equal TestModel.find(model.id.to_s), model
  end

  test "find by the token" do
    model = TestModel.create!
    token = Tokenizr.encode(model.id)

    assert_equal TestModel.find_by_token(token), model
  end
end