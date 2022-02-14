require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user is not created without a email" do
    user = User.new
    assert_not user.save
  end

  test "the user content min one property" do
    user = User.new(email: "alex0195@gmail.com", women: false, men: false, children: false)
    assert_not user.save
  end

  test "the email is not duplicate" do
    user = User.new(email: "alex0195@gmail.com", women: false, men: false, children: false)
    assert_not user.save
  end
end
