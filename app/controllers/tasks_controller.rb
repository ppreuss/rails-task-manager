class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end


  def show
   @task = Task.find(params[:id])
  end

  def new
    # Create a new restaurant object
    # Pass it to the view (form)
    # Display the form to the user!
    @restaurant = Restaurant.new
  end

  def create
    # Create a new restaurant instance
    # Filter the params from the user and pass it to the instance
    # Save it to the DB
    # Redirect to the restaurant

    # Creating a restaurant (adding it to the DB)
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to restaurant_path(restaurant)
    # Redirect
  end

  def edit
    # Display the form the user!
    # Grab the restaurant to edit from the DB
    # Pass it to the view
  end

  def update
    # Grab the restaurant to edit from the DB
    # Update the restaurant with the filtered parameters
    # redirect to the updated restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(restaurant)
    # Updating a restaurant (adding it to the DB)
    # Redirect
  end

  def destroy
    # Grab the restaurant to delete from the DB
    # delete the resto!
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end



