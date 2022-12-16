class Users::AddDefaultAvatar
  include Interactor

  def call
    @user = User.last
    if !@user.avatar.attached?
      @user.avatar.attach(io: File.open(Rails.root.join("app", "assets", "images", "default_avatar.png")), filename: "default_avatar.png", content_type: "image/png")
    end
  end
end
