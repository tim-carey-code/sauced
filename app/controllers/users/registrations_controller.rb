class Users::RegistrationsController < Devise::RegistrationsController
  def create
    result = Users::Create.call(
      params: user_params,
    )

    if result.success?
      sign_in(:user, result.user)
      flash[:notice] = "Account created successfully!"
      redirect_to(root_path)
    else
      flash[:alert] = result.message
      redirect_to(referrer_or_root)
    end
  end

  def update
    @user = User.find(current_user.id)
    if update_resource(@user, account_update_params)
      flash[:notice] = "Account updated successfully!"
      redirect_to(user_profile_path(@user))
    else
      flash[:alert] = "Unable to update account. Please review errors."
      redirect_to(referrer_or_root)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :current_password, :password_confirmation, :avatar)
  end
end
