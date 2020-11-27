class BuddyConnectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_buddy, only: [:show, :edit, :destroy]
  def index
    all_buds = policy_scope(BuddyConnection)
    @buddies = all_buds.where(user_1_id: current_user) + all_buds.where(user_2_id: current_user)
  end

  def show
    # leaving blank for now, don´t see the point atm
  end

  def edit
    # don´t see why we need this either, especially without an update?
  end

  def create
    # guessing this is triggered by a button on the show page
    # therefor can't test this rn
    @creator = User.find(params[:user_id])
    @joiner = current_user
    @buddy_connection = BuddyConnection.new
    @buddy_connection.user_1 = @creator
    @buddy_connection.user_2 = @joiner
    if @buddy_connection.save!
      redirect_to user_buddy_connections_path
    else
      redirect_to user_buddy_connections_path # ? alternatively to runs_path
    end
  end

  def destroy
    authorize @buddy
    @buddy.destroy
    redirect_to user_buddy_connections_path
  end

  private

  def find_buddy
    @buddy = BuddyConnection.find(params[:id])
  end

  def buddyc_params
    params.require(:buddy_connection).permit(:user_1_id, :user_2_id)
  end
end
