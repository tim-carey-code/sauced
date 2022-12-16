class Users::RegistrationsController < Devise::RegistrationsController
  def create
    result = Users::Create.call(
      params: user_params,
      user: @user
    )

    if result.success?
      flash[:success] = "Account created successfully!"
      redirect_to(root_path)
    else
      flash[:error] = result.message
      redirect_to(referrer_or_root)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar)
  end
end
