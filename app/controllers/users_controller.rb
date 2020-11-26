class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @creator = User.find(params[:id])
    @meetings = Meeting.where(run_id: params[:id])
  end
end
