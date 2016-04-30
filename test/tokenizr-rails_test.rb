require 'test_helper'

class TokenizrRailsTest < ActiveSupport::TestCase
  test "model#token" do
    model = TestModel.create!

    assert_equal model.token, Tokenizr.encode(model.id)
  end
end
