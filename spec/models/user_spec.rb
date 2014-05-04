require 'spec_helper'

describe User do
  context "validations" do
    it { should validate_presence_of(:user_name) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should allow_value('example@this.com').for(:email) }
    it { should_not allow_value('asdfjkl').for(:email) }
    it { should have_secure_password }
    # it { should validate_uniqueness_of(:email) }
    # it { should validate_uniqueness_of(:user_name) }
  end

  context "associations" do
    it { should have_many(:interests) }
    it { should have_many(:jobs) }
    it { should have_many(:accounts) }
    it { should have_many(:agencies) }
  end
end