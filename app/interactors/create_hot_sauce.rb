class CreateHotSauce
  include Interactor::Organizer

  organize(
    SaveHotSauce,
    CreateFavorite
  )
end
