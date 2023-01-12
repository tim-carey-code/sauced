# == Schema Information
#
# Table name: checkins
#
#  id          :bigint           not null, primary key
#  location    :string
#  rating      :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hotsauce_id :integer          not null
#  user_id     :integer          not null
#
require "test_helper"

class CheckinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
