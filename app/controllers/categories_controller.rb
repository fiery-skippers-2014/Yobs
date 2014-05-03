class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
    @user = User.new
  end

  def show
  	@category = Category.find(params[:id])
  	@jobs = Job.where("category_id = ?", @category.id)
  end
end

