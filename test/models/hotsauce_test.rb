# == Schema Information
#
# Table name: hotsauces
#
#  id          :bigint           not null, primary key
#  category    :string           not null
#  description :string
#  location    :string
#  name        :string
#  rating      :integer
#  review      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class HotsauceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
