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
class Favorite < ApplicationRecord
  has_many :feed_items, dependent: :destroy, as: :feedable
  belongs_to :hotsauce
  belongs_to :user
end
