class DashboardController < ApplicationController
	def show 
		# @current_user = current_user
		@writing = current_user.writings
		@shows = current_user.shows
		authorize @shows
		authorize @writing
	end 
end
