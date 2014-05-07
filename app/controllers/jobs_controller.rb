class JobsController < ApplicationController

	before_filter :reroute_user
	before_filter :redirect_if_youth

	# PLEASE MOVE IF NEEDED ELSEWHERE-- SHOULD NOT BE HERE
	def index
	  @jobs = Job.order(:created_at)
	  respond_to do |format|
	    # format.html
	    format.csv { send_data @jobs.as_csv }
	  end
	end

	def show
		@job = Job.find(params[:id])
	  @users = @job.users
	end


	def create # form currently misroutes to the sessions controller
		@agency = params[:agency_id]
		job = Job.new(params[:job])
		job.category_id = params[:category]
		job.agency_id = params[:agency_id]
		job.date = params[:date]
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
		render :edit
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
		@agency = params[:agency_id]
		job = Job.find(params[:id])
		job.destroy
		redirect_to agency_path(@agency)
	end


end