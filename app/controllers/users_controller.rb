class UsersController < ApplicationController

  def index

  end

# New Method handled by Javascript

  def create
    user = User.new (params[:user])
    puts "THIS IS THE USER"
    puts user
    user.password = params[:password]
    puts user
    if user.save
      session[:session_user] = user.user_name #logs new user in
      redirect_to :root
    else
      flash.alert = user.errors.full_messages.join(' : ')
    end
  end

  # def login
  #   @user = User.find_by_email(params[:email])
  #   puts "________USER OBJECT"
  #   puts @user
  #   if @user.password == params[:password]
  #     puts "*|&^"*30
  #     give_token
  #     session[:session_user] = @user.user_name
  #   else
  #     redirect_to root
  #   end
  # end

  def destroy
    puts "*"*30
    puts "session = #{session}"
    reset_session
    puts "session should be nil now = #{session}"
    render :index
  end

end