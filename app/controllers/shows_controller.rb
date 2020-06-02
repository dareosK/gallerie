class ShowsController < ApplicationController
  def index
    @shows = policy_scope(Show).order(created_at: :desc)
  end

  def show
  end

  def new
    @show = Show.new # make it available for the view
  end

  def create
    # authorize @show
    @show = Show.new(show_params)
    @user = current_user # to allow current user to create
    @show.save
    if @show.save!
      redirect_to show_path(@show)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:title, :statement)
  end
end
