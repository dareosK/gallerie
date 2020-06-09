class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  def index
    @shows = policy_scope(Show).order(created_at: :desc)
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
    @artworks = @show.artworks
    authorize @show
  end

  def update
    @show = Show.find(params[:id])
    authorize @show
    
    if @show.update(show_params)
      redirect_to edit_show_path(@show)
    else
      render "new"
    end
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:title, :statement, :photo, :logline)
  end
end
