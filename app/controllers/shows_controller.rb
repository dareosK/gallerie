class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  def index
    @shows = policy_scope(Show).order(created_at: :desc)
    @show = Show.new
  end

  def show
    @show = Show.find(params[:id])
    authorize @show
  end

  def create
    @show = Show.new(show_params)
    @show.user = current_user
    authorize @show # to allow current user to create
    if @show.save!
      redirect_to edit_show_path(@show)
    else
      render "new"
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:title, :statement, :photo)
  end
end
