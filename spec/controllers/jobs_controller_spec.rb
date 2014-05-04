require 'spec_helper'

describe JobsController do
	# context "#index" do
	# 	it "is successful" do
	# 		get :index
	# 		expect(response).to be_success
	# 	end
	# end

		it "assigns jobs to all Job.all" do
			get :index
			expect(assigns(:jobs)).to eq Job.all
		end


	context "show" do
		let(:job) {FactoryGirl.create :job}
		it "is successful" do
			get :show, :id => job.id
			expect(response).to be_success
	end

		it "assigns @job to the Job found by id" do
			get :show, :id => job.id
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

	context "create" do
		it "creates valid attributes" do
			expect{
				post :create, :job => FactoryGirl.attributes_for(:job)
			}.to change {Job.count}.by(1)
			expect(response).to be_redirect
		end
	end

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

	context "destroy" do
		let!(:job) {FactoryGirl.create :job}
		it "deletes a record form database" do
			expect{
				delete :destroy, :id => job.id
			}.to change {Job.count}.by (-1)
		end
	end
end