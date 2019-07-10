# frozen_string_literal: true

class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurants = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    # @restaurants = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)

    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def update
    # @restaurants = Restaurants.find(params[:id])
    if @restaurant.update(restaurants_params)
      redirect_to restaurants_path
    else
      render 'edit'
    end
  end

  def destroy
    # @restaurants = Restaurants.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
