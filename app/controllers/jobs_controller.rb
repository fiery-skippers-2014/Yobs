class JobsController < ApplicationController
	before_filter :redirect_if_youth

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

	def show
		@job = Job.find(params[:id])
	  @users = @job.users
	end


	def create # form currently misroutes to the sessions controller
		puts "We're in the jobs create action"
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

	def edit
		puts "hitting route"
		@agency = Agency.find(params[:agency_id])
		@job = Job.find(params[:id])
		render :edit
	end

	def update
		p params
		p "update params printing"
		@agency = Agency.find(params[:agency_id])
		@job = Job.find(params[:id])
		if @job.update_attributes(params[:job])
			p "IT'S TRUE!!!!!!!!!!!!"
			redirect_to agency_path(@agency)

		else
			render :edit
			p "it's false"
		end
	end

	def destroy
		job = Job.find(params[:id])
		job.destroy
		redirect_to :back
	end


end