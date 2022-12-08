require "application_system_test_case"

class HotsaucesTest < ApplicationSystemTestCase
  setup do
    @hotsauce = hotsauces(:one)
  end

  test "visiting the index" do
    visit hotsauces_url
    assert_selector "h1", text: "Hotsauces"
  end

  test "should create hotsauce" do
    visit hotsauces_url
    click_on "New hotsauce"

    fill_in "Description", with: @hotsauce.description
    fill_in "Location", with: @hotsauce.location
    fill_in "Name", with: @hotsauce.name
    fill_in "Rating", with: @hotsauce.rating
    fill_in "Review", with: @hotsauce.review
    click_on "Create Hotsauce"

    assert_text "Hotsauce was successfully created"
    click_on "Back"
  end

  test "should update Hotsauce" do
    visit hotsauce_url(@hotsauce)
    click_on "Edit this hotsauce", match: :first

    fill_in "Description", with: @hotsauce.description
    fill_in "Location", with: @hotsauce.location
    fill_in "Name", with: @hotsauce.name
    fill_in "Rating", with: @hotsauce.rating
    fill_in "Review", with: @hotsauce.review
    click_on "Update Hotsauce"

    assert_text "Hotsauce was successfully updated"
    click_on "Back"
  end

  test "should destroy Hotsauce" do
    visit hotsauce_url(@hotsauce)
    click_on "Destroy this hotsauce", match: :first

    assert_text "Hotsauce was successfully destroyed"
  end
end
