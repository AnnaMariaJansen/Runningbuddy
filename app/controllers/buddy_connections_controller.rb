class BuddyConnectionsController < ApplicationController
  before_action :find_buddy, only: [:show, :edit, :destroy]
  def index
    @buddies = BuddyConnection.where(user_1_id: current_user) + BuddyConnection.where(user_2_id: current_user)
  end

  def show
    # leaving blank for now, don´t see the point atm
  end

  def edit
    # don´t see why we need this either, especially without an update?
  end

  def create
    raise
    # guessing this is triggered by a button on the show page
    # therefor can't test this rn
    @buddy_connection = BuddyConnection.new(user_1_id: current_user, user_2_id: buddyc_params)
    if @buddy_connection.save
      redirect_to user_buddy_connections_path
    else
      redirect_to users_path # ? alternatively to runs_path
    end
  end

  def destroy
    @buddy.destroy
    redirect_to user_buddy_connections_path
  end

  private

  def find_buddy
    @buddy = BuddyConnection.find(params[:id])
  end

  def buddyc_params
    params.require(:buddy_connections).permit(:user_id)
  end
end
