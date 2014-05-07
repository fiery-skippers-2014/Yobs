require 'spec_helper'

describe UsersController do

	let(:dummy_user) { FactoryGirl.create :user}
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(dummy_user)
    end

	context "#create" do
		it "should create a user with valid params" do
			expect {
				post :create, :user => FactoryGirl.attributes_for(:user)
				# simulating visit to User#create (via a form), passing in some dummy params
				}.to change {User.count}.by(1)
			end
		end

	context "show" do
		it "is successful" do
			get :show, {:id => dummy_user.id}
			# simulate a visit to user#show action, feeding it params from url (like /users/78)
			expect(response).to be_success
		end

		it "assigns @user to the User found by id" do
			get :show, {:id => dummy_user.id}
			# simulate a visit to user#show action, feeding it params from url (like /users/78)
			expect(assigns(:user)).to eq dummy_user
			# simulates @user = User.find(current_user.id)
		end

		# it "does not assign @user to the User found by id" do
		# 	get :show, {:id => "whatever"}
		# 	expect(assigns(:user)).to eq dummy_user
		# end



	end
end

