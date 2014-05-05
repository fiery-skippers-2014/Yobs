class ApplicationController < ActionController::Base
  # include Authentication
  protect_from_forgery
  helper_method :current_user
  before_filter :current_user
  def agency?(user)
    return true if user.role == "agency"
  end

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end


