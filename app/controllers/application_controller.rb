class ApplicationController < ActionController::Base
  # include Authentication
  protect_from_forgery
  before_filter :current_user
  helper_method :current_user

  def redirect_if_youth
    user = current_user
    if user.role != 'agency'
      redirect_to root_path
    end
  end

  def agency?(user)
    return true if user.role == "agency"
  end

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user #added this for facebook auth
end


