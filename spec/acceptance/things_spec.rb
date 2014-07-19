require_relative "acceptance_helper"

feature "Thing" do
  before do
    @thing = FactoryGirl.create :thing
  end

  scenario "show all the things" do
    visit "/things"
    expect(page).to have_content "All"
  end

  scenario "add a new thing" do
    visit "/things/new"
    fill_in 'thing_name', :with => 'test'
    fill_in 'thing_description', :with => 'i hate the kids'
    click_button 'Create Thing'
    expect(page).to have_content "test"
  end

  scenario "show a thing" do
    visit "/things/#{@thing.id}"
    expect(page).to have_content @thing.description
  end

  scenario "edit existing thing" do
    visit "/things/new"
    # expect(page).to have_content "All"
  end

  scenario "edit your own things" do
    visit "/things/#{@thing.id}/edit"
    # expect(page).to have_content "All"
  end
end