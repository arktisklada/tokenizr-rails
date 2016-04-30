require 'test_helper'

class TokenizrRailsTest < ActiveSupport::TestCase
  teardown do
    TestModel.destroy_all
  end

  test "model#token" do
    model = TestModel.create!

    assert_equal model.token, Tokenizr.encode(model.id)
  end
end