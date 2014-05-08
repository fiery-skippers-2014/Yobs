class InterestsController < ApplicationController

before_filter :authenticate, only: [:create]
skip_before_filter  :verify_authenticity_token

  def create
    job = Job.find(params[:job_id])
    interest = current_user.interests.build :job => job
  	if interest.save
      render text: job.id
  	else
  		render text: interest.errors.full_messages.join(' : ')
  	end
  end

  def update
    @interest = Interest.find(params[:id])
    @interest.response = !@interest.response
    if @interest.save
      render text: "Murphy"
    else
      render text: "Error"
    end
  end

  def destroy
    job = Job.find(params[:job_id])
    interest = current_user.jobs.delete(job)
    render text: job.id
  end

private

  def authenticate
    flash[:alert] = "Please Log in or Create User to Get Info For Job"
    head :forbidden unless current_user
  end

end
