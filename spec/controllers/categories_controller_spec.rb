require 'spec_helper'

describe CategoriesController do
  context "#index" do
    it "is succesful" do
      get :index
      expect(response).to be_success
    end

    it "should assign @categories to Categories.all" do
      get :index
      expect(assigns(:categories)).to eq Category.all
    end
  end

end
