class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  # def show
  #   @review = Review.find(params[:id])
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id]) # :restaurant_id we can see it on our schema
    @review = @restaurant.reviews.new # we got reviews from restaurant.rb so we can call it . each resaturant has many reviews
  end

  def create

    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
        #going to the resaturant page restaurant_patwhere i amde teh review
    else
      render :new   # this is a rails convention <if we save teh review @review.save successfuly redirect me to restaurant_path(@review.restaurant).Otehrwise refersh(render) the new page
    end
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update     no need for this method we do not want the user to update an existing review
  #   @review = Review.find(params[:id])
  #   @review.update(review_params)
  #   redirect_to review_path(@review) # to show page
  # end

  # def destroy    no need for this method we do not want the user to update an existing review
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to reviews_path(@review)
  # end
  private
   def review_params
    params.require(:review).permit(:content,:rating)
   end
end





#permit(:content,:ratings)  means authorization : I am allowing the user to change the content and ratings through the form
