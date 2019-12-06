class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id]) #params parametized url
    @review = Review.new #creating a new review instance so you can have an empty object for the form
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    respond_to do |format|
        format.html { redirect_to restaurants_path } #if js not working respond with html
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end

  end
end
