class RunsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_run, only: [:show, :edit, :update]

  def index
    # @runs = Run.all
    @runs = policy_scope(Run)
    # so dann in categories
    @runs_5 = policy_scope(Run).where(length: 5)

    if params[:query].present?
      # sql_query = "\
      #   runs.location @@ :query \
      #   OR runs.length @@ :query \
      #   OR runs.route @@ :query \
      #   OR runs.duration @@ :query \
      #   OR runs.duration @@ :query \
      #   OR runs.duration @@ :query \
      #   OR users.gender @@ :query \
      #   OR users.running_level @@ :query \
      #   "
      @runs = Run.global_search(params[:query])
      # @runs = User.joins(:meeting).where(sql_query, query: "%#{params[:query]}%")
      # @runs = policy_scope(Run).where(sql_query, query: "%#{params[:query]}%")
      @error = "sorry we couldn't find a run with your criteria" if @runs.empty?
    else
      @runs = policy_scope(Run).order(created_at: :desc)
    end
  end

  def show
    @creator = User.find(@run.user_id)
    # ------------------------------------------------
    # => just to test whether meetings are in fact created
    @meetings = Meeting.where(run_id: params[:id])
    # ------------------------------------------------
    @run = Run.find(params[:id])
    @run_coordinates = @run.geocode

    @markers = [{
      lat: @run_coordinates[0],
      lng: @run_coordinates[1]
    }]
  end

  def new
    @user = current_user
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    @run.user_id = current_user.id
    if @run.save
      redirect_to runs_path
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
