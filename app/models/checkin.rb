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
class Checkin < ApplicationRecord
  validates :rating, presence: true
  validates :rating, inclusion: { in: [ 1, 2, 3, 4, 5 ], message: "%{value} is not a valid rating" }
  
  belongs_to :hotsauce
  belongs_to :user

  has_rich_text :review
end
