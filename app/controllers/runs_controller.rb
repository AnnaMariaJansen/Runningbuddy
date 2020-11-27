class RunsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_run, only: [:show, :edit, :update]
  def index
    # @runs = Run.all
    @runs = policy_scope(Run)
    # if params[:query].present?
    #   # sql_query = "route ILIKE :query OR length ILIKE :query"
    #   # @runs = policy_scope(Run).where(sql_query, query: "%#{params[:query]}%")
    #   @error = "sorry we couldn't find a run with your criteria" if @runs == []
    # else
      # @runs = policy_scope(Run)
    # end
  end

  def show
    @creator = User.find(@run.user_id)
    # ------------------------------------------------
    # => just to test whether meetings are in fact created
    @meetings = Meeting.where(run_id: params[:id])
    # ------------------------------------------------
  end

  def new
    @user = current_user
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    @run.user_id = current_user.id
    if @run.save
      redirect_to runs_path(@run)
    else
      render :new
    end
    # @run.user = current_user
    # if @run.save
    #   redirect_to run_path(@run)
    # else
    #   render :new
    # end
  end

  def edit
    autorize @run
  end

  def update
    authorize @run
    if @run.update(run_params)
      redirect_to run_path(@run)
    else
      render :edit
    end
  end

  private

  def find_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.require(:run).permit(:route, :length, :date, :pace, :duration, :location)
  end
end
