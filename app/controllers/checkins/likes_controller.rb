class Checkins::LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_checkin

  def create
    @checkin.likes.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_to referrer_or_root }
      format.js
    end
  end

  def destroy
    @checkin.likes.where(user_id: current_user.id).destroy_all

    respond_to do |format|
      format.html { redirect_to referrer_or_root }
      format.js
    end
  end

  private

    def set_checkin
      @checkin = Checkin.find(params[:checkin_id])
    end
end