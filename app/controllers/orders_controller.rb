class OrdersController < ApplicationController
  before_action :find_place, only: %i[show create]

  def show
    @order = Order.find(params[:id])
    authorize @order
  end

  def index
    # @orders = Order.where(user: current_user)
    @orders = policy_scope(Order)
  end

  def create
    @order = Order.new(order_params)
    @order.place = @place
    @order.user = current_user
    authorize @order
    if @order.save
      redirect_to place_order_path(@place, @order)
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
