class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_strong_params)
    @review.restaurant = @restaurant
    if @review.save
      # redirect_to  restaurant_path(@restaurant)
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) } #if js not working respond with html
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      # render 'restaurants/show'
       respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_strong_params
    params.require(:review).permit(:content)
  end
end
