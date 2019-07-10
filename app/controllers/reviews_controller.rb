# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

  def show
    @restaurants = @restaurant.find(params[:id])
    @reviews = @restaurants.reviews
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
