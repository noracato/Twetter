class ApplicationController < ActionController::Base

	def current_user
		return false unless session[:user_id]
		User.find(session[:user_id])
	end

	def authenticate_user!
		# session[:user_id] = 1 # for testing!!
		redirect_to new_sessions_path unless current_user
	end

end
