class FeedItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @feed_items = FeedItem.order(created_at: :desc).all
  end
end
