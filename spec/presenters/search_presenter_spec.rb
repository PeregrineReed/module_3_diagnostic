require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    params = {}
    sf =SearchFacade.new(params)
  end

  it '#results' do
    params = {}
    sf =SearchFacade.new(params)

    sf.results
  end
end
