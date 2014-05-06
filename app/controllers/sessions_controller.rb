class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    # disabled for Omniauth # user = User.find_by_email(params[:email])
    # disabled for Omniauth # if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    # disabled for Omniauth #   if agency?(user)
    # disabled for Omniauth #     agency = user.agencies.first
    # disabled for Omniauth #     redirect_to agency_path(agency)
    # disabled for Omniauth #   else
    # disabled for Omniauth #     redirect_to root_path
    # disabled for Omniauth #  end
    # disabled for Omniauth # else
      # flash.alert = "Invalid email or password"
      # disabled for Omniauth #   redirect_to root_path
      redirect_to root_url
    # disabled for Omniauth #end
  end

  def destroy
    session.clear
    # alternate is session[:user_id] = nil
    redirect_to root_url
  end

end

