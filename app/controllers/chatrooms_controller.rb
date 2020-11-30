class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: :show
  def index
    # all_buds = policy_scope(BuddyConnection)
    # @buddies = all_buds.where(user_1_id: current_user) + all_buds.where(user_2_id: current_user)
    @chatrooms = policy_scope(Chatroom)
    # limit to only show chatrooms current_user is a part of
  end

  def show
    authorize @chatroom
    @message = Message.new
  end
  # autocreate chatroom when buddy connection is made

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
