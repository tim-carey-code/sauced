# frozen_string_literal: true

class Users::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    find_user(key: :id)
  end

  private

  def find_user(key: :id)
    @user = User.find(params[key])
  end
end
