require 'spec_helper'

describe UsersController do

	let(:user) { FactoryGirl.create :user}
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

	context "#create" do
		it "should create a user with valid params" do
			expect {
				post :create, :user => FactoryGirl.attributes_for(:user)
				}.to change {User.count}.by(1)
			end
		end

	context "show" do
		it "is successful" do
			get :show, :id => user.id
			expect(response).to be_success
		end

		it "assigns @user to the User found by id" do
			get :show, :id => user.id
			expect(assigns(:user)).to eq user
		end

	end
end

