class HotsaucesController < ApplicationController
  before_action :set_hotsauce, only: %i[ show edit update destroy ]

  # GET /hotsauces or /hotsauces.json
  def index
    @hotsauces = Hotsauce.all.order(created_at: :desc)
  end

  # GET /hotsauces/1 or /hotsauces/1.json
  def show
  end

  # GET /hotsauces/new
  def new
    @hotsauce = Hotsauce.new
  end

  # GET /hotsauces/1/edit
  def edit
  end

  # POST /hotsauces or /hotsauces.json
  def create
    @hotsauce = Hotsauce.new(hotsauce_params)

    respond_to do |format|
      if @hotsauce.save
        format.html { redirect_to hotsauce_url(@hotsauce), notice: "Hotsauce was successfully created." }
        format.json { render :show, status: :created, location: @hotsauce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotsauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotsauces/1 or /hotsauces/1.json
  def update
    respond_to do |format|
      if @hotsauce.update(hotsauce_params)
        format.html { redirect_to hotsauce_url(@hotsauce), notice: "Hotsauce was successfully updated." }
        format.json { render :show, status: :ok, location: @hotsauce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotsauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotsauces/1 or /hotsauces/1.json
  def destroy
    @hotsauce.destroy

    respond_to do |format|
      format.html { redirect_to hotsauces_url, notice: "Hotsauce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotsauce
      @hotsauce = Hotsauce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotsauce_params
      params.require(:hotsauce).permit(:name, :description, :rating, :review, :location, :category, :sauce_bottle_image)
    end
end
