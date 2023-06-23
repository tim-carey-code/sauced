require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should redirect user to feed items if signed in" do
    @user = users(:tim)
    sign_in @user

    get root_path
    assert_redirected_to feed_items_path
  end

  test "should redirect user to sign in if not signed in" do
    get root_path
    assert_redirected_to new_user_session_path
  end
end
