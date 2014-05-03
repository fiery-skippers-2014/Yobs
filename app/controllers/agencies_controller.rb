class AgenciesController < ApplicationController

	def index
	end

	def show
		 @agency_jobs = Agency.find(params[:id]).jobs
	end

end
