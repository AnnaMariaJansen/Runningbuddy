class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
  end

  def show
    @users = User.find(params[:id])
  end
end
