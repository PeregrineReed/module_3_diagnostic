require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end
  it 'and can use search bar' do
    visit '/'
    fill_in 'q', with: 80206
    click_on "Locate"

  end
end
