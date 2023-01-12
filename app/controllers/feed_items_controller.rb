class FeedItemsController < ApplicationController
  def index
    @feed_items = FeedItem.order(created_at: :desc).all
  end
end
