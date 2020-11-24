class MeetingsController < ApplicationController
  def create
  end

  def update
  end

  private

  def meetings_params
    params.require(:meeting).permit(:run_id, :user_id)
end
