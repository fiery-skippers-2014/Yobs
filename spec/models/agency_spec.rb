require 'spec_helper'

describe Agency do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:phone_number) }
    it { should ensure_length_of(:phone_number).is_at_least(10) }
  end

  context "associations" do
    it { should have_many(:jobs) }
    it { should have_many(:accounts) }
    it { should have_many(:users) }
  end
end
