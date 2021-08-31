class OrdersController < ApplicationController
  before_action :find_place

  def show
    @order = Order.new(order_params)
    @order.user = current_user
  end

  def create
    @order = Order.new(order_params)
    @order.place = @place
    @order.user = current_user
    if @order.save
      redirect_to places_path #need to change this to redirect to views/order/show
    else
      render '/places/show'
    end
  end

  private

  def order_params
    params.require(:order).permit(:checkin, :checkout, :guest)
  end

  def find_place
    @place = Place.find(params[:place_id])
  end
end
