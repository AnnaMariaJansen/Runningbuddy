class ReviewsController < ApplicationController
  # def show
  #   @review = Review.find(params[:id])
  # end

  # def new
  #   # @run = Run.find(params[:run_id])
  #   # @user = User.find(params[:user_id])
  #   @review = Review.new
  # end

  # def create
  #   @review = Review.new(review_params)
  #   @meeting = Meeting.find(params[:user_id])
  #   @review.meeting =
  #   # @review.user = current_user
  #   if @review.save
  #     redirect_to run_review_path(@review.run, @review)
  #   else
  #     render :new
  #   end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:vibe_rating, :route_rating, :challenge_rating, :user_id, :meeting_id)
  # end
end
