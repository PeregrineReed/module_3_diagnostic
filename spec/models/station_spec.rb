require 'rails_helper'

describe 'Station' do
  before :each do
    @data = {}
    @station = Station.new(@data)
  end

  it 'exists' do
    expect(@station).to be_a(Station)
  end

  it 'has attributes' do
    expect(@station.name).to eq('')
    expect(@station.street_address).to eq('')
    expect(@station.fuel_types).to eq('')
    expect(@station.distance).to eq('')
    expect(@station.access_times).to eq('')
  end
end
