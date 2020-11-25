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
    # probably have to create extra column status on meeting to have edit make sense
        # @meeting = Meeting.find(params[:id])
        # if @meeting.update(meeting_params)
        #   redirect_to somewhere
        # else
        #   render something
        # end
  end

  # private

  # def meetings_params
  #   params.require(:meeting).permit(:user_id, :run_id)
  # end
end
