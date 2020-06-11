class ArtworksController < ApplicationController
  def new    
  end

  def update
    @artwork = Artwork.find(params[:id])
    @panel = @artwork.panel
      if @artwork.update(artworks_params)
        render panel_path(@panel)
      else
        render panel_path(@panel)
      end
    authorize @artwork
  end
  
  def create 
    @panel = Panel.find(params[:panel_id])
    @show = @panel.show
    @artwork = Artwork.new(art_params)
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
    params.require(:artwork).permit(:title, :artist, :description, :x, :y, :width)
  end
end
