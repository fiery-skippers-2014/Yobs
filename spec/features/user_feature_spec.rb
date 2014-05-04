require 'spec_helper'

 describe 'Guest users' do
  context 'can create an account on the site' do
    let(:user) {FactoryGirl.create :user}
    it "can fill out the Create a User form and create an account" do
      visit root_path
      fill_in 'user[user_name]', :with => user.user_name
      fill_in 'user[first_name]', :with => user.first_name
      fill_in 'user[last_name]', :with => user.last_name
      fill_in 'user[email]', :with => user.email
      fill_in 'user[password]', :with => user.password
      click_on "Create User"
      expect(page).to have_content user.user_name
    end
  end

  context 'can login with valid email and password' do
    let!(:user) {FactoryGirl.create :user}
    it "can sign in" do
      visit root_path
      fill_in 'email', :with => user.email
      fill_in 'password', :with => user.password
      click_on "Log in"
      expect(page).to have_content user.user_name
    end
  end


  # context 'can log out', :js => true do
  #   let(:user) {FactoryGirl.create :user}
  #   before(:each) do
  #     ApplicationController.any_instance.stub(:current_user).and_return(user)
  #   end
  #   it "can log out" do
  #     visit root_path
  #     click_link "logout"
  #     sleep(5) # NEEDS TO BE REFACTORED
  #     expect(page).to have_content("Register")
  #   end
  # end

end


