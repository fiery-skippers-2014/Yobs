require 'spec_helper'

describe UsersController do
  context "#create" do
    it "should create a user with valid params" do
      expect {
        post :create, :user => FactoryGirl.attributes_for(:user)
        }.to change {User.count}.by(1)
    end
  end
end

