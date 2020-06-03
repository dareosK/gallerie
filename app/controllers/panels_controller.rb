class PanelsController < ApplicationController
  def index
    @panels = policy_scope(Panel).order(created_at: :desc)
  end

  def show
  end

  def create
    @panel = Panel.new
    @panel.user = current_user # to allow current user to create
    if @panel.save!
      redirect_to panel_path(@panel)
    else
      render "new"
    end
    authorize @panel
  end

  def edit
    @panel = Panel.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
