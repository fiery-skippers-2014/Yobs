class UsersController < ApplicationController

  def index

  end

# New Method handled by Javascript

  def create
      user = User.new params[:user]
      user.password = params[:password]
      if user.save
        session[:user_id] = user.id
        redirect_to root_path
    else
      flash.alert = user.errors.full_messages.join(' : ')
    end
  end


end