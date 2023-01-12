# == Schema Information
#
# Table name: favorites
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hotsauce_id :integer          not null
#  user_id     :integer          not null
#
require "test_helper"

class FavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
