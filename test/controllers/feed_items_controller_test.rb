require "test_helper"

class FeedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in(users(:tim))
  end

  test "should get index" do
    get feed_items_url
    assert_response :success
  end
end
