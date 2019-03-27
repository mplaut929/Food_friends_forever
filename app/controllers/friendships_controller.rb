class FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.all
  end

  # def new
  #   #code
  # end

  def create
    Friendship.add_friend(current_user.id, params[:id])
    redirect_to user_path(params[:id])
  end

  # def edit
  #   #code
  # end

  def update
    @friendship = Friendship.find(params[:id])
    @friendship.accept
    redirect_to friendships_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to friendships_path
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end


end
