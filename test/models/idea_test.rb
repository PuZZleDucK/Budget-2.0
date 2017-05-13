require 'test_helper'

class IdeaTest < ActiveSupport::TestCase

  def setup
    @user = users(:normal)
    @idea = @user.ideas.build(content: "content")
  end

  test "valid" do
    assert @idea.valid?
  end

  test "invalid no text" do
    @idea.content = ""
    assert_not @idea.valid?
  end

  test "invalid no user" do
    @idea.user_id = nil
    assert_not @idea.valid?
  end

  test "sorting" do
    assert_equal ideas(:most_recent), Idea.first
  end

  test "associated ideas destroyed" do
    @user.save
    @user.ideas.create!(content: "temp")
    idea_count = Idea.count
    @user.destroy
    assert_operator idea_count, :>, Idea.count
  end

end
