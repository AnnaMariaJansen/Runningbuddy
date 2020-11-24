class BuddyConnectionsController < ApplicationController
  before_action :find_buddy, only: [:show, :edit, :destroy]
  def index
    @buddies = BuddyConnection.where(user_1_id: current_user) + BuddyConnection.where(user_2_id: current_user)
  end

  def show
    raise
  end

  def edit
  end

  def create
    raise
    @BuddyConnection = BuddyConnection.new(buddyc_params)
    if @BuddyConnection.save
      # do something
    else
      redirect_to # somewhere
    end
  end

  def destroy
    raise
    @buddy.delete
    # add confiramtion and notice flash
    redirect_to buddy_connections_index_path
  end

  private

  def find_buddy
    @buddy = BuddyConnection.find(user_2_id: params[:id])
  end

  def buddyc_params
    params.require(:meeting).permit(:run_id, :user_id)
  end
end
