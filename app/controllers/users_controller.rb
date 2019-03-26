class UsersController < ApplicationController
before_action :logged_in?, only: [:show, :edit]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @restrictions = Restriction.all
    @fav_cuisines = FavCuisine.all
    @eating_locations = EatingLocation.all
    @meals = Meal.all
    @shoppings = Shopping.all
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    current_user
    @user = User.find(params[:id])
  end

  def friends
    render :friends
  end

  def edit
    @restrictions = Restriction.all
    @fav_cuisines = FavCuisine.all
    @eating_locations = EatingLocation.all
    @meals = Meal.all
    @shoppings = Shopping.all
    current_user
    @user = User.find(params[:id])
  end

  def update
    @restrictions = Restriction.all
    @fav_cuisines = FavCuisine.all
    @eating_locations = EatingLocation.all
    @meals = Meal.all
    @shoppings = Shopping.all
    current_user
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :username, :age, :city, :bio, :profile_pic, :password, :shopping_id, :meal_id, :eating_location_id, :fav_cuisine_id, restriction_ids: [])
  end

end
