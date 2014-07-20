require_relative 'acceptance_helper'

feature "Users" do
  before do
    @user = FactoryGirl.create :user
  end

  scenario "user can log in" do
    sign_in @user
    visit "/"
    expect(page).to have_content
  end

  scenario "viewing the index when not logged in" do
    visit "/users"
    expect(page.current_path).to eq "/users/sign_in"
  end

  scenario "viewing the index page" do
    sign_in @user
    visit "/users"
    expect(page).to have_content
  end

   scenario "goto sign in user when not logged in" do
    visit "/users/new"
    expect(page.current_path).to eq "/users/sign_in"
  end

  scenario "creating a new user" do
    sign_in @user
    visit "/users/new"
    expect(page).to have_content
  end

  scenario "viewing the show page" do
    sign_in @user
    visit "/users/#{@user.id}"
    expect(page).to have_content
  end
    
end