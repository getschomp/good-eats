class ReviewsController < ApplicationController


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to @restaurant, notice: "Review sucessfully created."
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:rating, :body, :restaurant_id)
  end
end
