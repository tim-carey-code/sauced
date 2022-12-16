class Users::AddDefaultAvatar
  include Interactor

  def call
    @user = context.user

    if !@user.avatar.attached?
      @user.avatar.attach(io: File.open(Rails.root.join("app", "assets", "images", "ketchup_bottle.png")), filename: "ketchup_bottle.png", content_type: "image/png")
    end
  end
end
