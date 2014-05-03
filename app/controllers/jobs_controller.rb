class JobsController < ApplicationController
  def show
  	@job = Job.find(params[:id])
  	render :partial => 'jobs/extended_display', :locals => { :job => @job }
  end
end