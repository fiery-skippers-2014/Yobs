class InterestsController < ApplicationController

#before_filter :reroute_user
skip_before_filter  :verify_authenticity_token

  def create
    interest = Interest.new(:job_id => params["job_id"], :user_id => current_user.id)
  	if interest.save
      render json: "#job-#{interest.job_id}".to_json
  	else
  		render json: interest.errors.full_messages.join(' : ')
  	end
  end

  def test
    render :json => {}
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
    puts "We're getting to destroy"
    user_interests = current_user.interests
    user_interest = user_interests.find_by_job_id(params["job_id"])
    job_id = user_interest.job_id
    user_interest.destroy
    render json: "#job-#{job_id}".to_json
  end

end