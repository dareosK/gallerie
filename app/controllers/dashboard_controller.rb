class DashboardController < ApplicationController
skip_before_action :authenticate_user!, only: [ :show ]
	def show 
		# @current_user = current_user
		@writing = current_user.writings
		@shows = current_user.shows
		authorize @shows
		authorize @writing
		@show = Show.new
		@shows = policy_scope(Show).order(created_at: :desc)
	end 
end
