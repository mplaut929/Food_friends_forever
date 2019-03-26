class WelcomeController < ApplicationController
  skip_before_action :current_user, only: [:index]
  def index
    render :index
  end

end
