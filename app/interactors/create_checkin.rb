class CreateCheckin
  include Interactor::Organizer

  organize(
    SaveCheckin,
    CreateFeedItem
  )
end
