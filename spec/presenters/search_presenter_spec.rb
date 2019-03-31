require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    sf = SearchFacade.new({})
    expect(sf).to be_a(SearchFacade)
  end

  it '#total_results' do
    params = {
      q: 80206
    }
    sf = SearchFacade.new(params)

    expect(sf.total_results).to eq(90)
  end
end
