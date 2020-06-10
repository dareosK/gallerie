class WritingsController < ApplicationController
	def show
		@writing = Writing.find(params[:id])
		@article = @writing.article
		authorize @writing
	end 
end
