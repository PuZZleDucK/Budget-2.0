require 'test_helper'

class SiteTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", signup_path, count: 2
  end

  test "invalid password" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name: "a",
                                         email: "invalid@goo.com",
                                         trust: 0,
                                         password: "123",
                                         password_confirmation: "123" } }
    end
    assert_template 'users/new'
    assert_template 'shared/_error_messages'
  end

  test "invalid email" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { first_name: "a",
                                         email: "",
                                         trust: 0,
                                         password: "123456",
                                         password_confirmation: "123456" } }
    end
    assert_template 'users/new'
  end

  test "valid signup" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { first_name: "a",
                                         email: "valid@goo.com",
                                         trust: 0,
                                         password: "123456",
                                         password_confirmation: "123456" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

end
