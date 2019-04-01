require 'rails_helper'

describe 'SearchFacade' do
  before :each do
    @params = '80206'
    @sf = SearchFacade.new(@params)
  end

  it 'exists' do
    expect(@sf).to be_a(SearchFacade)
  end

  it '#total_results' do
    expect(@sf.total_results).to eq(87)
  end

  it '#stations' do
    all_stations = @sf.stations.all? do |station|
      station.class == Station
    end

    expect(all_stations).to eq(true)
  end
end
