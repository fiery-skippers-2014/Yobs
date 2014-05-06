require 'spec_helper'

describe "Agencies" do
  let(:user) { FactoryGirl.create :user, :role => 'agency' }
    before(:each) do
      ApplicationController.any_instance.stub(:current_user).and_return(user)
    end

  context "can create an job on the site", js:true do
    let!(:agency) {FactoryGirl.create :agency}
    it "can click a link that leads to a Create Job form" do
      visit agency_path(agency)
      click_on "Post New Job"
      expect(page).to have_css('input[type="text"]')
    end

    let!(:category) { FactoryGirl.create :category}
    let(:job) { FactoryGirl.create :job}
    it "can fill out job form and create a new job" do
      visit agency_path(agency)
      click_on "Post New Job"
      select category.name, :from => 'category'
      fill_in 'job[heading]', :with => job.heading
      fill_in 'job[description]', :with => job.description
      fill_in 'job[location]', :with => job.location
      fill_in 'datepicker', :with => '' # we do this to trigger focus and pop the calendar on the page. Alternatively, we could execute javascript to trigger focus, but we thought this was simpler.
      click_on('1') # choose day 1 from the calendar selector.
      click_on "Create Job"
      expect(page).to have_content(job.heading)
    end
  end

end
