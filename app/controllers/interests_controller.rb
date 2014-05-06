class InterestsController < ApplicationController

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
  end

  def destroy
    interest = current_user.interests.find_by_job_id(params["job_id"])
    job_id = interest.job_id
    interest.destroy
    render json: "#job-#{job_id}".to_json
  end

end