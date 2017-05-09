require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "h1", "Welcome to Budget 2.0"
    assert_select "small", "Hacking the Victorian budget"
  end

  test "root is home" do
    get root_path
    assert_response :success
    assert_select "h1", "Welcome to Budget 2.0"
    assert_select "small", "Hacking the Victorian budget"
  end
end
