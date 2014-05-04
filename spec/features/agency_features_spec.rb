require 'spec_helper'

feature 'Agency users' do
  context "can create an job on the site", js:true do
    let!(:user) { FactoryGirl.attributes_for :user }
    it "can click a link that leads to a Create Job form" do
      visit agency_path(:id => 5)
      click_on "Post New Job"
      expect(page).to have_css('input[type="text"]') 
      # expect(page).to have_content "Description"
      # expect(page).to have_content "Location"
      # expect(page).to have_content "Create Job"
    # end

    # it "can fill out the Create an Account form and create an account" do
    #   visit new_user_path
      fill_in 'job[heading]', :with => "Pick Up Sticks"
      fill_in 'Heading', :with => "Pick Up Sticks"
      fill_in 'job[description]', :with => "Pick up a thousand sticks from the street"
      fill_in 'job[location]', :with => "Mission Street"
      # fill_in 'job[date]', :with => "08/22/2014"
      # select('Aerospace', :from => 'category')
      #  click_on "Create Job"
      #  expect(page).to have_content User.last.username
    end
  end

  # context "Guest user can't create questions or answers"  do
  #   let(:question) {FactoryGirl.create :question}
  #   let(:answer) {FactoryGirl.create :answer }

  #   it "can view questions but not create a new question" do
  #     visit root_path
  #     expect(page).to_not have_content "Create a Question"
  #   end

  #   it "can view questions but not create a new answer" do
  #     visit question_path(:id => question.id)
  #     expect(page).to_not have_content "Create an Answer"
  #   end

  # end
end
