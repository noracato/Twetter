module ApplicationHelper
  def current_user
    return false unless session[:user_id]
    User.find(session[:user_id])
  end
end
