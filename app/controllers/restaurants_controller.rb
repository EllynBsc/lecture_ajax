class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id]) #params parametized url
    @review = Review.new #creating a new review instance so you can have an empty object for the form
  end
end
