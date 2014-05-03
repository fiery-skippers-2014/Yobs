class CategoriesController < ApplicationController
  def show
  	@job = Job.find(params[:job_id])
  end
end