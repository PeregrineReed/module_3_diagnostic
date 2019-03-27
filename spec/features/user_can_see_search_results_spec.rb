require 'rails_helper'

feature 'as a visitor' do

  it 'and can use search bar' do
    visit '/'
    fill_in 'q', with: 80206
    click_on "Locate"

    expect(page).to have_content('Results for 80206')

    expect(page).to have_content('Station Name')
    expect(page).to have_content('Station Address')
    expect(page).to have_content('Fuel Types')
    expect(page).to have_content('Distance')
    expect(page).to have_content('Access Times')

    expect(page).to have_content('15 Closest Stations within 5 miles')
  end

end
