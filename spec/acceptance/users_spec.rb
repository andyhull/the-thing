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
end