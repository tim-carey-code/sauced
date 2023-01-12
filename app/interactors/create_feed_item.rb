class CreateFeedItem
  include Interactor

  delegate :user, :feedable, to: :context

  def call
    @feed_item = FeedItem.new(feedable: feedable, user: user)
    if @feed_item.save
      context.feed_item = @feed_item
    else
      context.fail!(message: @feed_item.errors.full_messages)
    end
  end
end
