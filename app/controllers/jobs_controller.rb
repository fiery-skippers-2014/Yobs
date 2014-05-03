class JobsController < ApplicationController

	def index
	  @jobs = Job.order(:created_at)
	  
	  respond_to do |format|
	    # format.html
	    format.csv { send_data @jobs.as_csv }
	  end
	end

	def new
		@categories = Category.new
	end

	def create
		job = Job.new(params[:job])
		job.category_id = params[:category]
		job.agency_id = params[:agency_id]
		job.date = params[:date]
		if job.save
			redirect_to :back
		else
			flash.alert = job.errors.full_messages.join(' : ')
			redirect_to :back
		end
	end

end