class AgenciesController < ApplicationController
  before_filter :reroute_user
  before_filter :redirect_if_youth

	def show
    if not_users_agency_profile?
      redirect_to agency_path(current_user.accounts.first.agency)
    else
  		@agency = Agency.find(params[:id])
  		@agency_jobs = @agency.jobs
  		@job = Job.new()
    end
	end

end
