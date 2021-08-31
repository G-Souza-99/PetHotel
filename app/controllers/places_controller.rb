class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
  end

  def show
    @order = Order.new(place: @place, user: current_user)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @place.update(place_params)
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :address)
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
