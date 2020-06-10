class ArtworksController < ApplicationController
  def new
  end

  def create
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artoworks_params)
  end

  def destroy
  end

  private

  def artworks_params
    params.require(:artwork).permit(:title, :artist, :description, :x, :y, :width)
  end
end
