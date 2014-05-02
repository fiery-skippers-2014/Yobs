require 'spec_helper'
 
 describe Job do
   context "validations" do
     it { should validate_presence_of(:agency) }
     it { should validate_presence_of(:category) }
     it { should validate_presence_of(:heading) }
     it { should validate_presence_of(:description) }
     it { should validate_presence_of(:location) }
     it { should validate_presence_of(:date) }
     it { should ensure_length_of(:heading).is_at_most(65) }
     it { should ensure_length_of(:location).is_at_most(65) }
     it { should ensure_length_of(:date).is_at_most(65) }
     it { should ensure_length_of(:description).is_at_most(600) }
   end
 
   # UNCOMMENT WHEN ASSOCIATIONS EXIST
   # context "associations" do
   #   it { should belong_to(:agency) }
   #   it { should belong_to(:category) }
   # end
 
 end