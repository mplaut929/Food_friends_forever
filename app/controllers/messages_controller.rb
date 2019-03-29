class MessagesController < ApplicationController

  def create
    @conversation = Friendship.find(params[:id])
    Message.create(user_id: current_user.id, message: params[:message], conversation_id: @conversation.id )
    # message.user = current_user
    #
    # if message.valid?
    #       ActionCable.server.broadcast 'messages',
    #         message: message.message,
    #         user: message.user.username
    #       head :ok
    #     end
    redirect_to friendship_path(@conversation) and return
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :conversation_id, :message)
  end


end
