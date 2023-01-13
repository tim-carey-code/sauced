# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  checkin_id :integer
#  user_id    :integer
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :checkin
end
