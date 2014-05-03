class JobsController < ApplicationController
  def show
  	puts "We're IN TO THE ROUTE"
  	puts params
  	@job = Job.find(params[:id])
  	render :partial => 'jobs/extended_display', :locals => { :job => @job }
  end
end