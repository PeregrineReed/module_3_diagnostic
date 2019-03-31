require 'rails_helper'

feature 'User can visit root page' do
  scenario 'and view navbar contents' do
    visit '/'
    within('.navbar') do
      expect(page).to have_content('AltFuelFinder')
      expect(page).to have_selector('input[value=\'Search by zip...\']')
    end
  end

  scenario 'can search by zip code' do
    visit '/'

    fill_in 'q', with: 80206
    click_button 'Locate'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Total Results: 87')
    expect(page).to have_content('15 Closest Stations')
    expect(page).to have_css('.station', count: 15)
    within(first('.station')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.address')
      expect(page).to have_css('.fuel_types')
      expect(page).to have_css('.distance')
      expect(page).to have_css('.access_times')
    end
  end
end
