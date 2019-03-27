class MessagesController < ApplicationController

  def create
    @conversation = Friendship.find(params[:id])
    Message.create(user_id: current_user.id, message: params[:message], conversation_id: @conversation.id )
    redirect_to friendship_path(@conversation)
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :conversation_id, :message)
  end


end
