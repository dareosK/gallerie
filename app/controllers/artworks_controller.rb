class ArtworksController < ApplicationController
  def new    
  end

  def update
    @artwork = Artwork.find(params[:id])
    @panel = @artwork.panel
    @panel_id = @artwork.panel_id
      if @artwork.update(artworks_params)
        @panel = @artwork.panel
        @panel_id = @artwork.panel_id
        if @panel_id.to_s == params[:artwork][:panel_id]
        redirect_to panel_path(@panel)
      else
        render panel_path(@panel)
      end
    end
    authorize @artwork
  end
  
  def create 
    @panel = Panel.find(params[:panel_id])
    @show = @panel.show
    @artwork = Artwork.new(artworks_params)
    @artwork.panel = @panel
    @artwork.user = current_user
    @artwork.show = @show
    if @artwork.save!
      redirect_to edit_show_path(@show)
    end
    authorize @artwork
  end

  def destroy
  end

  private

  def artworks_params
    params.require(:artwork).permit(:title, :photo, :artist, :description, :x, :y, :width, :panel_id)
  end
end
