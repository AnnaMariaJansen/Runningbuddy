class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "/shared/message", locals: { message: @message })
      )
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render "/chatrooms"
    end
  end

  def readcheck
    # updates the read status to true
    raise
    # chatroom_id: chatCard.dataset.chatroom, user_id: chatCard.dataset.user
    # @messages_viewed = Message.where(chatroom: params[:chatroom_id], user: User.find(params[:user_id]))
    # @messages_viewed.each { |mes| mes.read = true }
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
