class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])  #one object
  end

  def new
    @restaurant = Restaurant.new
      #no parameters we have empty form then will send the attributes to create method
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    redirect_to restaurant_path(@restaurant)
    else
    render :new  #we are rendering the file new from the restaurant
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])   #we edit a restauran that alrady exists ...edit is the form taht has info and we when submit we sent teh info to update
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurnat.update(restaurant_params)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path(@restaurant)
  end

  private
   def restaurant_params
    params.require(:restaurant).permit(:name,:address,:category,:phone_number)
   end
end
# rails we ll not alow me save teh form

#private is just used internally i can not call it outside the class









