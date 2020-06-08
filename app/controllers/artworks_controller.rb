class ArtworksController < ApplicationController

  def index
    @panel = Panel.find(params[:id])
    @artworks = @panel.artworks
  end


  def new
  end

  def create 
  end

  def destroy
  end
  
end
