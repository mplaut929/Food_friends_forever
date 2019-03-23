class FriendshipsController < ApplicationController

  def index
    @user = User.find params[:user_id]
    @friendships = @user.friendships
  end

  def new
    #code
  end

  def create
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
