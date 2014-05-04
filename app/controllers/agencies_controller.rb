class AgenciesController < ApplicationController

	def index
	end

	def show
		@agency = Agency.find(params[:id])
		@agency_jobs = @agency.jobs	
		@job = Job.new()
		 # @agency_jobs = Agency.find(params[:id]).jobs
	end

end
