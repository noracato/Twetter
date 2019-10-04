class SessionsController < ApplicationController

def new 
  @user = User.new
end

def create
  user = User.find_by(session_params)
  session[:user_id] = user.id
  redirect_to feed_path
end

def destroy
  session[:user_id] = nil
  redirect_to new_sessions_path
end


private
  def session_params
    params.require(:user).permit(:name, :password)
  end
end
