# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string           not null
#
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email,  uniqueness: true

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [60, 60]
  end

  after_create_commit :add_default_avatar, on: [:create, :update]

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(io: File.open(Rails.root.join("app", "assets", "images", "default_avatar.png")), filename: "default_avatar.png", content_type: "image/png")
    end
  end
end
