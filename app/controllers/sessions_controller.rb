class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    @user = User.find_by(username: params[:username])
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
