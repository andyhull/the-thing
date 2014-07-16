require_relative "./acceptance_helper"

feature "Home" do
  scenario "show the home page" do
    visit "/"
    expect(page).to have_content "thing"
  end
end