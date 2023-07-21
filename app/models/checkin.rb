# == Schema Information
#
# Table name: checkins
#
#  id          :bigint           not null, primary key
#  location    :string
#  rating      :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hotsauce_id :integer          not null
#  user_id     :integer          not null
#
class Checkin < ApplicationRecord
  #  validates :rating, presence: true
  #  validates :rating, inclusion: { in: [ 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 ], message: "%{value} is not a valid rating" }

  has_many :likes, dependent: :destroy
  belongs_to :hotsauce
  belongs_to :user

  has_rich_text :review
end
