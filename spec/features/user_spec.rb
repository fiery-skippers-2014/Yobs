require 'spec_helper'


 describe 'Guest users' do
   context 'can create an account on the site' do
     let!(:user) {FactoryGirl.attributes_for :user}
     it "can go to the homepage and click a create account button that lets them sign up" do
       visit root_path
       click_on "Create User"
       expect(page).to have_content "Create User"
     end
    it "can fill out the Create a User form and create an account" do
        # visit root_path
        fill_in 'user_user_name', :with => 'Shiv'
        fill_in 'user_email', :with => 'killer@aol.com'
        fill_in 'user_password', :with => 'Sinaloa666'
        click_on "Create User"
        exp(page).eq 'Shiv'
      end
   end

  end


