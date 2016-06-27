require "test_helper"

class FinderTest  < ActiveSupport::TestCase
  teardown do
    TestModel.destroy_all
  end

  test "using find_by_token" do
    model = TestModel.create!
    token = Tokenizr.encode(model.id)

    assert_equal TestModel.find_by_token(token), model
  end

  test "finds by the id" do
    model = TestModel.create!

    assert_equal TestModel.find(model.id), model
    assert_equal TestModel.find(model.id.to_s), model
  end

  test "find by the token" do
    model = TestModel.create!
    token = Tokenizr.encode(model.id)

    assert_equal TestModel.find(token), model
  end
end