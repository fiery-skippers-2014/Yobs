class ApplicationController < ActionController::Base
  # include Authentication
  protect_from_forgery
  before_filter :current_user
  helper_method :current_user
  skip_before_filter :reroute_user, :only => :root #applies to all resources


  def redirect_if_youth
    user = current_user
    if user.role != 'agency'
      redirect_to root_path
    end
  end

  def not_users_profile?
    current_user.id != params[:id].to_i
  end

  def not_users_agency_profile?
    current_user.accounts.first.agency_id != params[:id].to_i
  end

  def not_agencys_job?
    current_user.accounts.first.agency_id != params[:agency_id].to_i || params[:agency_id].to_i != Job.find(params[:id]).agency_id
  end

  def agency?(user)
    return true if user.role == "agency"
  end

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def reroute_user
    if !current_user
      redirect_to root_path
    end
  end

end


