require 'spec_helper'

describe Account do
  context "validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:agency_id) }
  end

  context "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:agency) }
  end
end