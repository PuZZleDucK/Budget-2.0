require 'test_helper'

class SupportTest < ActiveSupport::TestCase

  def setup
    @support = Support.new(user: users(:normal), idea: ideas(:most_recent))
  end

  test "valid" do
    assert @support.valid?
  end

  test "require user" do
    @support.user_id = nil
    assert_not @support.valid?
  end

  test "require idea" do
    @support.idea_id = nil
    assert_not @support.valid?
  end

  test "should support and unsupport idea" do
    normal_user = users(:normal)
    first_idea = ideas(:most_recent)
    assert_not normal_user.supports?(first_idea)
    normal_user.support(first_idea)
    assert normal_user.supports?(first_idea)
    assert first_idea.supporters.include?(normal_user)
    normal_user.unsupport(first_idea)
    assert_not normal_user.supports?(first_idea)
  end

end
