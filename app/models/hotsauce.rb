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
class Hotsauce < ApplicationRecord
  validates :rating, :inclusion => 1..5, presence: true
  validates :name, :description, :review, :location, presence: true
  validates :description, length: { maximum: 75 }

  has_one_attached :sauce_bottle_image do |attachable|
    attachable.variant :card, resize_to_limit: [ 300, 400 ]
  end

  has_many :favorites, dependent: :destroy
end
