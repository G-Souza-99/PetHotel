class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = Place.all
    @places = policy_scope(Place).order(created_at: :desc)
  end

  def show
    @order = Order.new(place: @place, user: current_user)
  end

  def new
    @place = Place.new
    authorize @place
  end

  def my_places
    @places = Place.where(user: current_user)
    authorize Place
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    authorize @place
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
    params.require(:place).permit(:name, :address, :photo)
  end

  def set_place
    @place = Place.find(params[:id])
    authorize @place
  end
end
