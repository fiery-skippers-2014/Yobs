class InterestsController < ApplicationController

  def create
  	puts params
	interest = Interest.new(:job_id => params["job_id"], :user_id => params["user_id"])
	puts interest.job_id
	if interest.save
		redirect_to :back
	else
		puts interest.errors.full_messages.join(' : ')
		redirect_to :back
	end
  end

end