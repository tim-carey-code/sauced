# == Schema Information
#
# Table name: hotsauces
#
#  id          :bigint           not null, primary key
#  category    :string           not null
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class HotsauceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
