require 'spec_helper'

feature 'Agency users' do
  context "can sign on to account" do
    let!(:agencyuser) { FactoryGirl.attributes_for :agencyuser }
    it "can go to home page and sign in to account and access agency index route" do
      visit root_path
      click_on "Log In"
      fill_in 'user[email]', :with => agencyuser[:email]
      fill_in 'user[password]', :with => agencyuser[:password]
      click_on "Create Account"
      expect(page).to have_content ("Bob's Jobs")
    end
  end
end

