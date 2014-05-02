require 'spec_helper'
 
 describe Category do
   context "validations" do
     it { should validate_presence_of(:name) }
     it { should ensure_length_of(:name).is_at_least(3) }
     it { should ensure_length_of(:name).is_at_most(12) }
   end
 
   # UNCOMMENT WHEN ASSOCIATIONS EXIST
   # context "associations" do
   #   it { should belong_to(:agency) }
   #   it { should belong_to(:category) }
   # end
 
 end