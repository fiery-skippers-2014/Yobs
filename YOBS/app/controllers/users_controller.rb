class UsersController < ApplicationController
  def index

  end

  def create
    puts "*"*30
    p params
    @user = User.new (params[:user])
    redirect_to :back
  end
end
