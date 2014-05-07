class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    if not_users_profile?
      redirect_to root_path
    else
      @user = User.find(params[:id])
      @jobs = @user.jobs
    end
  end

  def create
    user = User.new params[:user]
    user.password = params[:password]
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.alert = user.errors.full_messages.join(' : ')
      puts user.errors.full_messages.join(' : ')
      redirect_to root_path
    end
  end
end