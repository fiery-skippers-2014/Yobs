class JobsController < ApplicationController
	before_filter :redirect_if_youth

	# PLEASE MOVE IF NEEDED ELSEWHERE-- SHOULD NOT BE HERE
	# def index
	#   @jobs = Job.order(:created_at)
	#   respond_to do |format|
	#     # format.html
	#     format.csv { send_data @jobs.as_csv }
	#   end
	# end

	def show
		@job = Job.find(params[:id])
	  @users = @job.users
	end


	def create # form currently misroutes to the sessions controller
		@agency = Agency.find params[:agency_id]
		@job = @agency.jobs.build params[:job]
		@job.categroy = Category.find(params[:category])

		job.date = params[:date] # why is this not part of job params?
		if job.save
			redirect_to agency_path(@agency)
		else
			flash.alert = job.errors.full_messages.join(' : ')
			redirect_to agency_path(@agency)
		end
	end

	def edit
		@agency = Agency.find(params[:agency_id])
		@job = Job.find(params[:id])
	end

	def update
		@agency = Agency.find(params[:agency_id])
		@job = Job.find(params[:id])
		if @job.update_attributes(params[:job])
			redirect_to agency_path(@agency)
		else
			render :edit
		end
	end

	def destroy
		@agency = Agency.find params[:agency_id]
		job = Job.find(params[:id])
		@agency.jobs.delete(job)
		job.destroy
		redirect_to agency_path(@agency)
	end


end
