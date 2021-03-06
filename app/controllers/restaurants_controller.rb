class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
    @ratings = Review::RATINGS
  end

  def new
    @restaurant = Restaurant.new
    @categories = Restaurant::CATEGORIES
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name,
                                       :address,
                                       :phone_number,
                                       :category)
  end
end
