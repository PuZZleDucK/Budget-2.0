require 'test_helper'

class IdeasControllerTest < ActionDispatch::IntegrationTest

  def setup
    @idea = ideas(:most_recent)
  end

  test "redirect create when not logged in" do
    assert_no_difference 'Idea.count' do
      post ideas_path, params: { idea: { content: "test content" } }
    end
    assert_redirected_to login_url
  end

  test "redirect destroy when not logged in" do
    assert_no_difference 'Idea.count' do
      delete idea_path(@idea)
    end
    assert_redirected_to login_url
  end

end
