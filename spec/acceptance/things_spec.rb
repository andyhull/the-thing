require_relative "acceptance_helper"

feature "Thing" do
  scenario "show all the things" do
    visit "/things"
    expect(page).to have_content "All"
  end

  scenario "add a new thing" do
    visit "/things/new"
    expect(page).to have_content "All"
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