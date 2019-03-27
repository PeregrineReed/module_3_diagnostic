require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    params = {}
    sf =SearchFacade.new(params)
  end

  it '#stations' do
    params = {}
    sf =SearchFacade.new(params)

    sf.stations
  end
end
