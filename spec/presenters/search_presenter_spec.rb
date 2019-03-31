require 'rails_helper'

describe 'SearchFacade' do
  it 'exists' do
    sf = SearchFacade.new({})
    expect(sf).to be_a(SearchFacade)
  end
end
