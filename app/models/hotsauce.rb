# == Schema Information
#
# Table name: hotsauces
#
#  id          :bigint           not null, primary key
#  category    :string           not null
#  description :string
#  name        :string
#  review      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Hotsauce < ApplicationRecord
  validates :name, :description, :review, :location, presence: true
  validates :description, length: { maximum: 75 }

  has_one_attached :sauce_bottle_image do |attachable|
    attachable.variant :card, resize_to_limit: [ 300, 400 ]
  end

  has_many :checkins, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def rating
    ratings = checkins.map(&:rating)
    if ratings.count < 1
      "No ratings yet"
    else
      (ratings.sum / ratings.count).to_f
    end
  end
end
