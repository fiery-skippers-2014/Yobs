class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      login user
      if user.agency_staff?
        redirect_to agencies_path
      else
        redirect_to root_path
      end
    else
      # flash.alert = "Invalid email or password"
        redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_url
  end

end
