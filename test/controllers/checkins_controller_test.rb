require "test_helper"

class CheckinsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get checkins_new_url
    assert_response :success
  end

  test "should get create" do
    get checkins_create_url
    assert_response :success
  end

  test "should get destroy" do
    get checkins_destroy_url
    assert_response :success
  end
end
