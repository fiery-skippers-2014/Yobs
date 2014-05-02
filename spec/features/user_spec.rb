require 'spec_helper'

describe 'Guest users' do
  context 'can create an account on the site' do
    let!(:user) {FactoryGirl.attributes_for :user}
    it "can go to the homepage and click a create account button that lets them sign up" do
      visit root_path
      click_on "Create User"
      expect(page).to have_content "Create User"
    end
  end
end


# describe User do

# end
