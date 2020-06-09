class ArtworksController < ApplicationController

  def new
    
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

  def art_params
    params.require(:artwork).permit(:title, :description, :photo, :artist)
  end
  
end
