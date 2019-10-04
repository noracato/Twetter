class SessionsController < ApplicationController

	def new 
		@user = User.new
	end

	def create
		# user zetten op basis van params
		user = User.find_by(session_params)
		session[:user_id] = user.id
		redirect_to twets_path
	end

	def destroy
		session[:user_id] = nil
	end


	private
		def session_params
			params.require(:user).permit(:name, :password)
		end
end
