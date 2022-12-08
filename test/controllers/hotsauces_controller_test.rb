require "test_helper"

class HotsaucesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotsauce = hotsauces(:one)
  end

  test "should get index" do
    get hotsauces_url
    assert_response :success
  end

  test "should get new" do
    get new_hotsauce_url
    assert_response :success
  end

  test "should create hotsauce" do
    assert_difference("Hotsauce.count") do
      post hotsauces_url, params: { hotsauce: { description: @hotsauce.description, location: @hotsauce.location, name: @hotsauce.name, rating: @hotsauce.rating, review: @hotsauce.review } }
    end

    assert_redirected_to hotsauce_url(Hotsauce.last)
  end

  test "should show hotsauce" do
    get hotsauce_url(@hotsauce)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotsauce_url(@hotsauce)
    assert_response :success
  end

  test "should update hotsauce" do
    patch hotsauce_url(@hotsauce), params: { hotsauce: { description: @hotsauce.description, location: @hotsauce.location, name: @hotsauce.name, rating: @hotsauce.rating, review: @hotsauce.review } }
    assert_redirected_to hotsauce_url(@hotsauce)
  end

  test "should destroy hotsauce" do
    assert_difference("Hotsauce.count", -1) do
      delete hotsauce_url(@hotsauce)
    end

    assert_redirected_to hotsauces_url
  end
end
