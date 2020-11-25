class MeetingsController < ApplicationController
  def create
    @meeting = Meeting.new(user_id: params[:user_id], run_id: params[:run_id])
    if @meeting.save!
      redirect_to run_path(params[:run_id])
    else
      redirect_to users_path
    end
  end

  def update
  end

  # private

  # def meetings_params
  #   params.require(:meeting).permit(:user_id, :run_id)
  # end
end
