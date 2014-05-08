require 'spec_helper'

describe "Categories" do
  let!(:category) {FactoryGirl.create :category}
  let!(:agency) {FactoryGirl.create :agency}
  let!(:job) {FactoryGirl.create :job, :category => category, :agency => agency}

  context "Homepage" do
    it "should display categories on index (homepage)" do
      visit categories_path
      expect(page).to have_content category.name
    end
  end

  context "guest user", js: true do
	  let!(:category) {FactoryGirl.create :category}
	  let!(:agency) {FactoryGirl.create :agency}
	  let!(:job) {FactoryGirl.create :job, :category => category, :agency => agency}
  	it "is redirected to sign in page if requests info for job" do
  	visit category_path(category)
  	click_on "Send Me Info"
  	expect(page).to have_content("Please Log in or Create User to Get Info For Job")
  	end
  end

end