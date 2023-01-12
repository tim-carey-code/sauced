class CreateFavorite
  include Interactor::Organizer

  organize(
    SaveFavorite,
    CreateFeedItem
  )
end
