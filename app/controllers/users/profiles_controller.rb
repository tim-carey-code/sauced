class Users::ProfilesController < ApplicationController
  def index
    find_user(key: :id)
  end


  private

  def find_user(key: :id)
    @user = User.find(params[key])
  end
end
