class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: :show
  def index
    all_buds = policy_scope(BuddyConnection)
    @buddies = all_buds.where(user_1_id: current_user) + all_buds.where(user_2_id: current_user)
    @messages_unread = []
    @chatrooms = policy_scope(Chatroom)
    # chatroom ordering:
    @chatrooms.each do |chat|
      Message.where(chatroom_id: chat.id).each do |message|
        @messages_unread << message unless message.read
      end
    end
  end

  def show
    authorize @chatroom
    @message = Message.new
    @buddy_connection = @chatroom.buddy_connection
    if current_user.id == @buddy_connection.user_1_id
      @sender = @buddy_connection.user_2
    else
      @sender = @buddy_connection.user_1
    end
    @buddys_messages = Message.where(chatroom_id: params[:id], user_id: @sender.id)
    @buddys_messages.each { |mes| mes.update(read: true) }
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
