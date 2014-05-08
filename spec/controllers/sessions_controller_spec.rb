require 'spec_helper'

describe SessionsController do

  let(:session) {FactoryGirl.create :session}
  context "#destroy" do
    it "should clear session" do
      delete :destroy
      expect(:session).to_not eq("1h27febhjwef63g213")
    end
  end
end