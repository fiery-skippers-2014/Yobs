class InterestsController < ApplicationController

skip_before_filter  :verify_authenticity_token

  def create
    job = Job.find(params[:job_id])
    interest = current_user.interests.build :job => job
  	if interest.save
      # only return the job id
      render text: job.id
  	else
  		render text: interest.errors.full_messages.join(' : ')
  	end
  end

  def destroy
    job = Job.find(params[:id])
    interest = current_user.interests.delete(job)
    render text: job.id
  end

end
