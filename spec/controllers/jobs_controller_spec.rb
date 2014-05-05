require 'spec_helper'

describe JobsController do
	let(:user) { FactoryGirl.create :user, :role => 'agency' }
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

	context "show" do
		let!(:agency) {FactoryGirl.create :agency}
		let!(:job) {FactoryGirl.create :job}
		it "is successful" do
			get :show, :agency_id => agency.id, :id => job.id
			expect(response).to be_success
	end

		it "assigns @job to the Job found by id" do
			get :show, :agency_id => agency.id, :id => job.id, :role => 'agency'
			expect(assigns(:job)).to eq job
		end
	end

	# context "new" do
	# 	it "is successful" do
	# 		get :new
	# 		expect(response).to be_success
	# 	end

	# 	it "assigns @job to the newly created job" do
	# 		get :new
	# 		expect(assigns(:job)).to be_a_new Job
	# 	end
	# end

	# context "create" do
	# 	it "creates valid attributes" do
	# 		expect{
	# 			post :create, :job => FactoryGirl.attributes_for(:job)
	# 		}.to change {Job.count}.by(1)
	# 		expect(response).to be_redirect
	# 	end
	# end

	# context "edit" do
	# 	let(:job) {FactoryGirl.create :job}
	# 	it "is successful" do
	# 		get :edit, :id => job.id
	# 		expect(response).to be_success
	# 	end

	# 	it "assigns @job to the Job found by id" do
	# 		get :edit, :id => job.id
	# 		expect(assigns(:job)).to eq job
	# 	end
	# end

	# context "update" do
	# 	let(:job) {FactoryGirl.create :job}
	# 	it "updates attributes" do
	# 		expect{
	# 			put :update, :id => job.id, :job => {:name => "Namrata"}
	# 		}
	# 	end
	# end

# 	context "destroy" do
# 		let!(:job) {FactoryGirl.create :job}
# 		it "deletes a record form database" do
# 			expect{
# 				delete :destroy, :id => job.id
# 			}.to change {Job.count}.by (-1)
# 		end
# 	end
end