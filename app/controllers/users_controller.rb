class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @users = policy_scope(User)
  end

  def show
    @creator = User.find(params[:id])
    @meetings = Meeting.where(run_id: params[:id])
  end

  def edit
    @user = current_user
    # @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

    private

  def user_params
    params.require(:user).permit(:name, :birthday, :gender, :running_level, :avatar_url, :photo)
  end
end
