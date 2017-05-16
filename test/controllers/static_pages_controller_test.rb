require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "small", "© 4Voices 2017 - Ben Minerds - Luke McDonald - Davis Hong - Dinda	Pradi - #BudgetHack2017"
  end

  test "root is home" do
    get root_path
    assert_response :success
    assert_select "small", "© 4Voices 2017 - Ben Minerds - Luke McDonald - Davis Hong - Dinda	Pradi - #BudgetHack2017"
  end
end
