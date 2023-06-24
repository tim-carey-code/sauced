# frozen_string_literal: true

class CheckinsController < ApplicationController
  before_action :authenticate_user!

  def new
    find_hotsauce
    @checkin = Checkin.new
  end

  def create
    find_hotsauce

    result = CreateCheckin.call(user: current_user, params: checkin_params, hotsauce: @hotsauce)
    if result.success?
      flash[:success] = 'Checked in!'
      redirect_to feed_items_path
    else
      flash[:error] = result.message
      redirect_back fallback_location: hotsauce_path(@hotsauce)
    end
  end

  private

  def checkin_params
    params.require(:checkin).permit(:rating, :location, :review)
  end

  def find_hotsauce
    @hotsauce = Hotsauce.find(params[:id])
  end
end
