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
#  user_id     :integer          not null
#
class Hotsauce < ApplicationRecord
  validates :name, :description, presence: true
  validates :description, length: { maximum: 75 }

  has_one_attached :sauce_bottle_image do |attachable|
    attachable.variant :card, resize_to_limit: [ 300, 400 ]
    attachable.variant :medium, resize_to_limit: [ 1024, 768]
  end

  has_many :checkins, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one :user
  belongs_to :user

  def rating
    ratings = checkins.map(&:rating)
    if ratings.count < 1
      "No ratings yet"
    else
      (ratings.sum / ratings.count).to_f
    end
  end

  def stars
    if rating == "No ratings yet"
      "No stars..."
    else
      return "⭐️" * rating.to_i
    end
  end

  def has_rating?
    ratings = checkins.map(&:rating)
    if ratings.count < 1
      false
    else
      true
    end
  end
end
