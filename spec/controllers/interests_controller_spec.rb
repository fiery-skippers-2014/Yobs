require 'spec_helper'

describe InterestsController do

  context "#create" do

  end

  context "#update" do
    let!(:job) {FactoryGirl.create :job}
    let!(:user) {FactoryGirl.create :user}
    let!(:interest) {FactoryGirl.create :interest, :user => user, :job => job}
    it "should update an interest" do
      put :update, :id => interest.id, :interest => {:response => true}
      interest.reload
      expect(interest.response).to eq(true)
    end
  end

  context "#destroy" do

  end
end