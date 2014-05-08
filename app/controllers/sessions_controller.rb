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
      redirect_to sign_up_path
    end
  end

  def destroy
    session.clear
    redirect_to root_url
  end

end

