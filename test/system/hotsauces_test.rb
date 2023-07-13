# frozen_string_literal: true

require 'application_system_test_case'

class HotsaucesTest < ApplicationSystemTestCase
  setup do
    @hotsauce = hotsauces(:one)
    sign_in users(:tim)
  end

  test 'visiting the index' do
    visit hotsauces_url
    assert_selector 'h4', text: 'Hot Sauces'
  end

  test 'should create hotsauce' do
    visit hotsauces_url
    click_on 'New Hotsauce'

    fill_in 'hotsauce_description', with: @hotsauce.description
    fill_in 'hotsauce_name', with: @hotsauce.name
    click_on 'Create Hotsauce'

    assert_text 'Hotsauce was successfully created'
  end

  test 'should update Hotsauce' do
    visit hotsauce_url(@hotsauce)
    click_on 'Edit this hotsauce', match: :first

    fill_in 'hotsauce_description', with: @hotsauce.description
    fill_in 'hotsauce_name', with: @hotsauce.name
    click_on 'Update Hotsauce'

    assert_text 'Hotsauce was successfully updated'
  end
end
