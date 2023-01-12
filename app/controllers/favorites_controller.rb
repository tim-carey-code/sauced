class FavoritesController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def create
    find_hotsauce(key: :hotsauce_id)
    result = CreateFavorite.call(user: current_user, hotsauce: @hotsauce)

    if result.success?
      flash[:success] = "Favorited #{@hotsauce.name}"
    else
      flash[:error] = result.message
    end
    redirect_to hotsauce_path(@hotsauce)
  end

  def destroy
    find_favorite
    @hotsauce = @favorite.hotsauce

    if @favorite.destroy
      flash[:success] = "Removed #{@hotsauce.name} from favorites."
    else
      flash[:error] = "Something went wrong."
    end
    redirect_back fallback_location: hotsauce_path(@hotsauce)
  end

  private

  def find_hotsauce(key: :id)
    @hotsauce = Hotsauce.find(params[key])
  end

  def find_favorite(key: :id)
    @favorite = Favorite.find(params[key])
  end
end
