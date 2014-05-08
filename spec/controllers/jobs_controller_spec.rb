require 'spec_helper'

describe JobsController do
	let(:user) { FactoryGirl.create :user, :role => 'agency' }
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

	context "show" do
		let!(:agency) {FactoryGirl.create :agency}
		let!(:account) {FactoryGirl.create :account, :user => user, :agency => agency}
		let!(:job) {FactoryGirl.create :job, :agency => agency}
		it "is successful" do
			get :show, :agency_id => agency.id, :id => job.id
			expect(response).to be_success
	end

		it "assigns @job to the Job found by id" do
			get :show, :agency_id => agency.id, :id => job.id
			expect(assigns(:job)).to eq job
		end
	end


	# context "create" do
	# 	let!(:agency) {FactoryGirl.create :agency}
	# 	let(:category) {FactoryGirl.create :category}
	# 	it "creates job with valid attributes" do
	# 		expect{
	# 			post :create, :date => "today", :agency_id => agency.id, :category => category.id, :job => FactoryGirl.attributes_for(:job)
	# 		}.to change {Job.count}.by(1)
	# 		expect(response).to be_redirect
	# 	end
	# end

	context "edit" do
		let!(:agency) {FactoryGirl.create :agency}
		let!(:job) {FactoryGirl.create :job}
		it "is successful" do
			get :edit, :agency_id => agency.id, :id => job.id
			expect(response).to be_success
		end

		it "assigns @job to the Job found by id" do
			get :edit, :agency_id => agency.id, :id => job.id
			expect(assigns(:agency)).to eq agency
			expect(assigns(:job)).to eq job
		end
	end

	context "update" do
		let!(:agency) {FactoryGirl.create :agency}
		let(:job) {FactoryGirl.create :job}
		it "updates attributes" do
			put :update, :agency_id => agency.id, :id => job.id, :job => {:heading => "Namrata"}
			job.reload
			expect(job.heading).to eq("Namrata")
		end
	end

	context "destroy" do
		let!(:agency) {FactoryGirl.create :agency}
		let!(:job) {FactoryGirl.create :job}
		it "deletes a record form database" do
			expect{
				delete :destroy, :agency_id => agency.id, :id => job.id
			}.to change {Job.count}.by (-1)
		end
	end

end