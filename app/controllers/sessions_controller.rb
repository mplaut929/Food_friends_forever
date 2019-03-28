class SessionsController < ApplicationController
  skip_before_action :current_user, only: [:new, :create]

  def new
    render :login
  end

  def create
    @user = User.find_by(username: params[:username].downcase)
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:notice] = "Invalid username or password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
