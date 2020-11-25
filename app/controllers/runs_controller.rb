class RunsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @runs = policy_scope(Run)
    if params[:query].present?
      sql_query = "route ILIKE :query OR length ILIKE :query"
      @runs = policy_scope(Run).where(sql_query, query: "%#{params[:query]}%")
      @error = "sorry we couldn't find a run with your criteria" if @runs == []
    else
      @runs = policy_scope(Run)
    end
  end

  def show
    @run = Run.find(params[:id])
    # ------------------------------------------------
    # => just to test whether meetings are in fact created
    @meetings = Meeting.where(run_id: params[:id])
    # ------------------------------------------------
  end

  def new
    @user = User.find(params[:user_id])
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    @run.user = current_user
    if @run.save
      redirect_to run_pth(@run)
    else
      render :new
    end
  end

  def edit
    @run = Run.find(params[:id])
    # autorize @run
  end

  def update
    @run = Run.find(params[:id])
    authorize @run
    if @run.update(run_params)
      redirect_to run_path(@run)
    else
      render :new #not sure if this is what we want
    end
  end

  private

  def run_params
    params.require(:run).permit(:route, :length, :date, :pace, :duration, :location)
  end
end
