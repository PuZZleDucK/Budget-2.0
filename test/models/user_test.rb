require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    # @normal_user = users(:normal)
    @normal_user = User.new(first_name: "Example", email: "user@example.com", trust: 0, password: "foobar", password_confirmation: "foobar")
  end

  test "valid user" do
    assert @normal_user.valid?
  end

  test "no email invalid" do
    @normal_user.email = " "
    assert_not @normal_user.valid?
  end

  test "bad email invalid" do
    @normal_user.email = "not_at_anywhere_dot_com"
    assert_not @normal_user.valid?
  end

  test "unique email" do
    duplicate_user = @normal_user.dup
    duplicate_user.email = @normal_user.email.upcase
    @normal_user.save
    assert_not duplicate_user.valid?
  end

end
