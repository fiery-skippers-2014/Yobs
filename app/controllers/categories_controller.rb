class CategoriesController < ApplicationController
  before_filter :redirect_if_agency_user

  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  	@jobs = @category.jobs
  end
end

