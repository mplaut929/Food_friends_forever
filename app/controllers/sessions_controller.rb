class SessionsController < ApplicationController


  def new
    render :login
  end

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def destroy
    session.delete :username

    redirect_to '/'
  end



end
