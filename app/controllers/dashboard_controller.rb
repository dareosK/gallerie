class DashboardController < ApplicationController
skip_before_action :authenticate_user!, only: [ :show ]
	def show 
		# @current_user = current_user
		@user = User.find(params[:user_id])
		@writing = @user.writings
		@shows = @user.shows
		authorize @shows
		authorize @writing
		@show = Show.new
		# @shows = policy_scope(Show).order(created_at: :desc)
	end 
end
