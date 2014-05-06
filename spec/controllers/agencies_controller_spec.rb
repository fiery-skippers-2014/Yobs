require 'spec_helper'

describe AgenciesController, js: true do
  context "#show" do
    let!(:agency) { FactoryGirl.create :agency}
    let(:user) { FactoryGirl.create :user, :role => 'agency' }
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

    it "should set @agency to the right agency" do
      get :show, :id => agency.id
      expect(assigns(:agency)).to eq agency
    end

    let!(:job) {FactoryGirl.create :job, :agency_id => agency.id}
    it "should set @agency_jobs to the jobs that belong to the agency" do
      get :show, :id => agency.id
      expect(assigns(:agency_jobs)).to include job
    end

    it "should assign new Job to @job" do
      get :show, :id => agency.id
      expect(assigns(:job)).to be_a_new Job
    end
  end

  context "#show" do
    let!(:agency) { FactoryGirl.create :agency}
    let(:user) { FactoryGirl.create :user }
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

    it "should redirect a youth" do
      get :show, :id => agency.id
      expect(response).to be_redirect
    end
  end



end
