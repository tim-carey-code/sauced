# frozen_string_literal: true

class Users::ProfilesController < ApplicationController
  def index
    if user_signed_in?
      find_user(key: :id)
    else
      redirect_to new_user_session_path
    end
  end

  private

  def find_user(key: :id)
    @user = User.find(params[key])
  end
end
