class SaveFavorite
  include Interactor

  delegate :user, :hotsauce, to: :context

  def call
    favorite = Favorite.new(user: user, hotsauce: hotsauce)
    
    if favorite.save
      context.feedable = favorite
    else
      context.fail!(message: favorite.errors.full_messages)
    end
  end
end
