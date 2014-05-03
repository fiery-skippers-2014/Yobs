class SessionsController < ApplicationController

  def create
    puts params[:email]
    user = User.find_by_email(params[:email])
    puts user
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      # flash.alert = "Invalid email or password"
    end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url
  end

end

