class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    user = User.new params[:user]
    user.password = params[:password]
    if user.save
      login user
      redirect_to root_path
    else
      flash.alert = user.errors.full_messages.join(' : ')
      puts user.errors.full_messages.join(' : ')
      redirect_to root_path
    end
  end
end
