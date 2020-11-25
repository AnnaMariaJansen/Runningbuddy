class MeetingsController < ApplicationController
  def create
    @run = Run.find(params[:run_id])
    @meeting = Meeting.new(user: current_user, run: @run)
    if @meeting.save!
      redirect_to run_path(@run)
    else
      redirect_to users_path
    end
  end

  def update
    @meeting = Meeting.find(params[:id])
    @meeting.update!(status: params[:status])
    redirect_to run_path(@meeting.run)
  end

  private

  def meeting_params
    params.require(:meeting).permit(:status)
  end
end
