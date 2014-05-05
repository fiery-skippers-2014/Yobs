class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if agency?(user)
        agency = user.agencies.first
        redirect_to agency_path(agency)
      else
        redirect_to root_path
      end
    else
      # flash.alert = "Invalid email or password"
        redirect_to root_path
    end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url
  end

end

