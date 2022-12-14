class Hotsauce < ApplicationRecord
  validates :rating, :inclusion => 1..5, presence: true
  validates :name, :description, :review, :location, presence: true

  has_one_attached :sauce_bottle_image do |attachable|
    attachable.variant :card, resize_to_limit: [ 300, 400 ]
  end
end