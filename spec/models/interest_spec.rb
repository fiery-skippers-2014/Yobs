require 'spec_helper'

 describe Interest do
   context "validations" do
     it { should validate_presence_of(:user_id) }
     it { should validate_presence_of(:job_id) }
   end

   context "associations" do
     it { should belong_to(:job) }
     it {should belong_to(:user)}
   end

 end