# == Schema Information
#
# Table name: feed_items
#
#  id            :bigint           not null, primary key
#  feedable_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  feedable_id   :integer          not null
#  user_id       :integer          not null
#
class FeedItem < ApplicationRecord
   belongs_to :feedable, polymorphic: true
   belongs_to :user
end
