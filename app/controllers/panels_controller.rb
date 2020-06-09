require "open-uri"

class PanelsController < ApplicationController
  def index
    @panels = policy_scope(Panel).order(created_at: :desc)
  end

  def show
    @panel = Panel.find(params[:id])
    authorize @panel
    @artworks = @panel.artworks
    wall_panel_img = URI.open("https://res.cloudinary.com/do3fkzte4/image/upload/v1591694256/wall_1_xvvizq.jpg")
    @panel.wall.attach(io: wall_panel_img, filename: 'wall_1_xvvizq.jpg', content_type: 'image/jpg')
  end

  def new
    @show = Show.find(params[:show_id])
    @panel = Panel.new
    authorize @panel
  end

  def create
    @show = Show.find(params[:show_id])
    wall_panel_img = URI.open("https://res.cloudinary.com/do3fkzte4/image/upload/v1591694256/wall_1_xvvizq.jpg")
    @panel = Panel.new
    @panel.wall.attach(io: wall_panel_img, filename: 'wall_1_xvvizq.jpg', content_type: 'image/jpg')
    @panel.show = @show
    if @panel.save!
      redirect_to edit_show_path(@show, anchor: "profile")
    else
      render "new"
    end
    authorize @panel
  end

  def edit
    @panel = Panel.find(params[:id])
    authorize @panel
  end

  def update
  end

  def destroy
  end
end
