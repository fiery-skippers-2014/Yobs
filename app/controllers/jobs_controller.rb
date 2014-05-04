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

 def show
    @job_title = "SOMETHING"
    @users = [
      {
        user_name: "headfdsafd1",
        first_name: "d1fda",
        last_name: "l1fdaf",
        email: "12/12/fdas12",
        password_digest: "what is that"
      },
      {
        user_name: "hefdsaad2",
        first_name: "dfdas2",
        last_name: "lfdas2",
        email: "12/12/12",
        password_digest: "what is that"
      },
      {
        user_name: "heaaaaaad3",
        first_name: "dfdas3",
        last_name: "lfdsa3",
        email: "12/12ff/12",
        password_digest: "what is that"
      },
    ]
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