require 'spec_helper'

 describe 'Guest users' do
  context 'can create an account on the site' do
    let(:user) {FactoryGirl.create :user}
    it "can fill out the Create a User form and create an account" do
      visit root_path
      click_on 'Log In'
      fill_in 'user[user_name]', :with => user.user_name
      fill_in 'user[first_name]', :with => user.first_name
      fill_in 'user[last_name]', :with => user.last_name
      fill_in 'user[email]', :with => user.email
      fill_in 'user[password]', :with => user.password
      click_on "Create User"
      expect(page).to have_content("Log Out")
    end
  end

  context 'can login with valid email and password' do
    let!(:user) {FactoryGirl.create :user}
    it "can sign in" do
      visit root_path
      click_on "Log In"
      fill_in 'email', :with => user.email
      fill_in 'password', :with => user.password
      click_on "Login"
      expect(page).to have_content("Log Out")
    end
  end

  context 'can login with account' do
    let!(:user) {FactoryGirl.create :user}
    it  'should log user in' do
      visit root_path
      click_on "Log In"
      fill_in 'email', :with => user.email
      fill_in 'password', :with => user.password
      click_on "Login"
      expect(page).to have_content("Log Out")
    end
  end


  context 'can log out' do
    let!(:user) {FactoryGirl.create :user}
    it  'should log out user' do
      visit root_path
      click_on "Log In"
      fill_in 'email', :with => user.email
      fill_in 'password', :with => user.password
      click_on "Login"
      click_on "Log Out"
      expect(page).to have_content("Log In")
    end
  end

end


