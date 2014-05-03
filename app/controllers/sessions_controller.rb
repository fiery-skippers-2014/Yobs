class SessionsController < ApplicationController



  def create
    puts " -----------EMAIL-"
    puts params[:email]
    user = User.find_by_email(params[:email])
    puts " ----------NAME"
    puts user
    if user && user.authenticate(params[:password])
      puts "I'm In"
      session[:user_id] = user.id
      render json: user.first_name.to_json
    else
      # flash.alert = "Invalid email or password"

    end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url
  end

end

