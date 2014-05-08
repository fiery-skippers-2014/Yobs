class InterestsController < ApplicationController

before_filter :authenticate, only: [:create]
skip_before_filter  :verify_authenticity_token

  def create
    interest = Interest.new(:job_id => params["job_id"], :user_id => current_user.id)
  	if interest.save
      render json: "#job-#{interest.job_id}".to_json
  	else
  		render json: interest.errors.full_messages.join(' : ')
  	end
  end

  def update
    @interest = Interest.find(params[:id])
    if @interest.response
      @interest.response = false
    else
      @interest.response = true
    end
    if @interest.save
      render text: "Murphy"
    else
      render text: "Error"
    end
  end

  def destroy
    user_interests = current_user.interests
    user_interest = user_interests.find_by_job_id(params["job_id"])
    job_id = user_interest.job_id
    user_interest.destroy
    render json: "#job-#{job_id}".to_json
  end


private

def authenticate
  flash[:alert] = "Please Log in or Create User to Get Info For Job"
  head :forbidden unless current_user
end

end
