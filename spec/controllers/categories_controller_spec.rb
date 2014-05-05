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

  context "#show" do
    let(:category) { FactoryGirl.create(:category) }
    before(:each) do
      get :show, :id => category.id
    end

    it "is successful" do
      expect(response).to be_success
    end

    it "should assign the category that is found by the category id" do
      expect(assigns(:category)).to eq category
    end


    let!(:job) { FactoryGirl.create(:job, {category: category})}
    it "should assign job(s) that belong to the category to @jobs" do
      expect(assigns(:jobs)).to include(job)
    end
  end

end
