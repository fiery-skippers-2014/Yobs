class AgenciesController < ApplicationController

  before_filter :redirect_if_youth

	def show
		@agency = Agency.find(params[:id])
		@agency_jobs = @agency.jobs
		@job = Job.new()
		 # @agency_jobs = Agency.find(params[:id]).jobs
	end

end
