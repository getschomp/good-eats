class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    id = params[:id]
    @restaurant = Restaurant.find(id)
    @reviews = Review.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
    render :new
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :desciption)
  end
end
