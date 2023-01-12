module HotsaucesHelper
  def is_favorited?(user:, hotsauce:)
    favorite_for(user: user, hotsauce: hotsauce).present?
  end

  def favorite_for(user:, hotsauce:)
    user.favorites.find_by(hotsauce_id: hotsauce.id)
  end
end
