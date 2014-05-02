describe "Categories" do
  let!(:category) {FactoryGirl.create :category}

  context "Homepage" do
    it "should display categories on index (homepage)" do
      visit categories_path
      expect(page).to have_content category.name
    end
  end
end