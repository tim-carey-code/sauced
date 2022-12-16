class Users::Create
  include Interactor::Organizer

  organize(
    Users::Save,
    Users::AddDefaultAvatar
  )

end
