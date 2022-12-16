class Users::Save
  include Interactor

  def call
    @user = User.new(context.params)
    context.user = @user

    if !@user.save
      context.fail!(message: "Unable to sign up. Please review errors. #{@user.errors.full_messages.to_sentence}")
    end
  end
end
