class ApplicationController < ActionController::Base

  before_action :current_user

  def current_user
    @current_user = User.find_by(id: session[:user_id] )
  end

  def logged_in?
    render :logged_in if !current_user
  end

end
