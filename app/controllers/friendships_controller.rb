class FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.all
  end

  def new
    #code
  end

  def create
    Friendship.add_friend(current_user.id, params[:id])
    redirect_to '/'
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

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
