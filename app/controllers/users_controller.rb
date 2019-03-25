class UsersController < ApplicationController

  def login
    current_user
  end



  def index
    @users = User.all
  end

  def new
    @user = User.new
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
    @user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:first_name, :username, :age, :city, :bio, :profile_pic)
  end

end
