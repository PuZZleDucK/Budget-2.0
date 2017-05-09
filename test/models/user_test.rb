require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @normal_user = users(:normal)
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
