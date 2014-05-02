class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	puts "*"*30
  	p params
	  puts "*"*30
  	@category = Category.find(params[:id])
  end
end

